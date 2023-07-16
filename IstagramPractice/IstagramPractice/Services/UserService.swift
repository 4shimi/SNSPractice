//
//  UserService.swift
//  IstagramPractice
//
//  Created by 정회승 on 2023/07/15.
//

import Foundation
import Firebase

struct UserService {
    
    static func fetchUser(witUid uid: String) async throws -> User {
        let snapshot = try await Firestore.firestore().collection("users").document(uid).getDocument()
        return try snapshot.data(as: User.self)
    }
    
    static func fetchAllUsers() async throws -> [User] {
        let snapshot = try await Firestore.firestore().collection("users").getDocuments()
        return snapshot.documents.compactMap({ try? $0.data(as: User.self) })
    }
}
