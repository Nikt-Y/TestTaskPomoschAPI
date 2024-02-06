//
//  MainViewModel.swift
//  TestTask
//
//  Created by Nik Y on 06.02.2024.
//

import PomoschAPI
import Network
import Foundation

class MainViewModel: ObservableObject {
    
    enum State: Comparable {
        case good
        case isLoading
        case loadedAll
        case error(String)
    }
    
    @Published var wards: [WardsPageQuery.Data.Wards.Edge] = []
    @Published var sortAscending: Bool = true
    @Published var pageInfo: WardsPageQuery.Data.Wards.PageInfo?
    
    @Published var state: State = .good
    @Published var isNetworkAvailable: Bool = true
    
    // Задает количество записей на странице
    var countOnPage: GraphQLNullable<Int> = 10
    // Нужен для проверки подключения к интернету
    private let monitor = NWPathMonitor()
    
    init() {
        setupNetworkMonitor()
    }
    
    /// Универсальный метод, который можно использовать, как для бесконечного скролинга,
    /// так и для перелистывания страниц вперед-назад вручную
    func fetchWards(first: GraphQLNullable<Int> = nil, after: GraphQLNullable<String> = nil,
                    before: GraphQLNullable<String> = nil, last: GraphQLNullable<Int> = nil) {
        guard isNetworkAvailable else {
            resetState()
            return
        }
        
        guard state == .good else {
            return
        }
        state = .isLoading
        
        let sortDirection = sortAscending ? SortEnumType.asc : SortEnumType.desc
        let namesSort = NomenSortInput(firstName: .some(.case(sortDirection)), middleName: .some(.case(sortDirection)))
        let publicInformationSort = WardPublicInformationSortInput(name: .some(namesSort))
        let idSort = WardSortInput(id: .some(.case(.asc)))

        let order = [
            WardSortInput(publicInformation: .some(publicInformationSort)),
            idSort
        ]
        
        let query = WardsPageQuery(
            order: .some(order),
            first: first,
            after: after,
            before: before,
            last: last
        )
        
        NetworkService.shared.apollo.fetch(query: query, cachePolicy: .returnCacheDataAndFetch) { [weak self] result in
            //Apollo говорит, что тут по умолчанию главный поток
            switch result {
                
            case .success(let value):
                self?.wards.append(contentsOf: value.data?.wards?.edges?.compactMap { $0 } ?? [])
                self?.pageInfo = value.data?.wards?.pageInfo
                self?.state = self?.pageInfo?.hasNextPage == false ? .loadedAll : .good
            case .failure(let error):
                self?.pageInfo = nil
                self?.state = .error(error.localizedDescription)
            }
        }
    }
    
    func loadMore() {
        guard let pageInfo = pageInfo, pageInfo.hasNextPage, let endCursor = pageInfo.endCursor, state == .good else { return }
        fetchWards(first: countOnPage, after: .some(endCursor))
    }
    
    func toggleSortDirection() {
        sortAscending.toggle()
        wards = []
        fetchWards(first: countOnPage)
    }
    
    private func setupNetworkMonitor() {
        monitor.pathUpdateHandler = { [weak self] path in
            DispatchQueue.main.async { [self] in
                guard let self = self else { return }
                if path.status == .satisfied {
                    self.isNetworkAvailable = true
                    if self.wards.isEmpty {
                        self.fetchWards(first: self.countOnPage)
                    }
                } else {
                    self.isNetworkAvailable = false
                    self.resetState()
                }
            }
        }
        let queue = DispatchQueue(label: "Monitor")
        monitor.start(queue: queue)
    }
    
    private func resetState() {
        wards = []
        pageInfo = nil
    }
}

