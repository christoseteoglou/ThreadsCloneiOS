//
//  ExploreViewModel.swift
//  ThreadsClone
//
//  Created by Christos Eteoglou on 2023-10-25.
//

import Foundation

class ExploreViewModel: ObservableObject {
    @Published var users = [User]()
    
    init() {
        Task { try await fetchUsers() }
    }
    
    @MainActor
    private func fetchUsers() async throws {
        self.users = try await UserService.fetchUsers()
    }
}
