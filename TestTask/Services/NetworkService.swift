//
//  NetworkService.swift
//  TestTask
//
//  Created by Nik Y on 06.02.2024.
//

import Apollo
import Foundation

final class NetworkService {
    static let shared = NetworkService()
    
    private(set) var apollo = ApolloClient(url: URL(string: "https://api.pomosch.app/graphql")!)
    
    private init() {}
}
