//
//  MainView.swift
//  TestTask
//
//  Created by Nik Y on 06.02.2024.
//

import SwiftUI
import CachedAsyncImage

struct MainView: View {
    @StateObject var viewModel = MainViewModel()
    
    var body: some View {
        NavigationStack {
            VStack {
                Spacer()
                
                if viewModel.isNetworkAvailable {
                    ScrollViewReader { proxy in
                        List {
                            ForEach(viewModel.wards, id: \.node.id) { ward in
                                WardRowView(ward: ward)
                            }
                            
                            switch viewModel.state {
                            case .good:
                                Color.clear
                                    .onAppear {
                                        viewModel.loadMore()
                                    }
                            case .isLoading:
                                ProgressView()
                                    .frame(maxWidth: .infinity)
                            case .loadedAll:
                                EmptyView()
                            case .error(let message):
                                Text(message)
                                    .foregroundColor(.red)
                            }
                        }
                        .listStyle(.plain)
                    }
                } else {
                    Text("Проверьте интернет соединение")
                }
                
                Spacer()
                
                Button("Сортировка: \(viewModel.sortAscending ? "Возрастание" : "Убывание")") {
                    viewModel.toggleSortDirection()
                }
                
            }
            .onAppear {
                if viewModel.wards.isEmpty {
                    viewModel.fetchWards(first: viewModel.countOnPage)
                }
            }
            
        }
    }
    
}
