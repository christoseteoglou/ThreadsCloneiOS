//
//  PreviewProvider.swift
//  ThreadsClone
//
//  Created by Christos Eteoglou on 2023-10-25.
//

import SwiftUI
import Firebase

extension PreviewProvider {
    static var dev: DeveloperPreview {
        return DeveloperPreview.shared
    }
}

class DeveloperPreview {
    static let shared = DeveloperPreview()
    
    let user = User(id: NSUUID().uuidString, fullname: "Christos Eteoglou", email: "eatoldglue@gmail.com", username: "eatoldglue")
    
    let thread = Thread(ownerUid: "123", caption: "This is a test thread", timestamp: Timestamp(), likes: 0)
}
