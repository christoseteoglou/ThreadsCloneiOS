//
//  CreateThreadViewModel.swift
//  ThreadsClone
//
//  Created by Christos Eteoglou on 2023-10-25.
//

import Foundation
import Firebase

class CreateThreadViewModel: ObservableObject {
    func uploadThread(caption: String) async throws {
        guard let uid = Auth.auth().currentUser?.uid else { return }
        let thread = Thread( ownerUid: uid, caption: caption, timestamp: Timestamp(), likes: 0)
        try await ThreadService.uploadThread(thread)
    }
}
