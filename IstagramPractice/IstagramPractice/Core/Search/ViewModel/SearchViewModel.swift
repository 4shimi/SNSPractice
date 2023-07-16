//
//  SearchViewModel.swift
//  IstagramPractice
//
//  Created by 정회승 on 2023/07/15.
//

import Foundation

class SearchViewModel: ObservableObject {
    @Published var users = [User]()
    
    init() {
        Task { try await fetchAllUsers() }
    }
    
    
    @MainActor
    func fetchAllUsers() async throws{
        self.users = try await UserService.fetchAllUsers()
    }
}
