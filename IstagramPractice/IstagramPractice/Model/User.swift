//
//  User.swift
//  IstagramPractice
//
//  Created by 정회승 on 2023/07/13.
//

import Foundation
import Firebase

struct User: Identifiable, Hashable, Codable {
    let id: String
    var username: String
    var profileImageUrl: String?
    var fullname: String?
    var bio: String?
    let email: String
    
    var isCurrentUser: Bool {
        guard let currentUid = Auth.auth().currentUser?.uid else { return false }
        return currentUid == id
    }
}

extension User {
    static var MOCK_USERS: [User] = [
        .init(id: NSUUID().uuidString, username: "회승", profileImageUrl: nil, fullname: nil, bio: "돼지", email: "king81597@naver.com"),
        .init(id: NSUUID().uuidString, username: "시저", profileImageUrl: nil, fullname: "Caesar", bio: "씨쪄", email: "caesar@naver.com"),
        .init(id: NSUUID().uuidString, username: "노바", profileImageUrl: nil, fullname: "Nova", bio: "노빠", email: "nova@naver.com"),
        .init(id: NSUUID().uuidString, username: "제이미", profileImageUrl: nil, fullname: "Jamie", bio: "쩨이미", email: "jamie@naver.com"),
        .init(id: NSUUID().uuidString, username: "핀", profileImageUrl: nil, fullname: "Pin", bio: "삔", email: "pin@naver.com"),
        .init(id: NSUUID().uuidString, username: "지구", profileImageUrl: nil, fullname: "Jigu", bio: "찌꾸", email: "jigu@naver.com"),
        .init(id: NSUUID().uuidString, username: "아지", profileImageUrl: nil, fullname: "Azhy", bio: "아찌", email: "azhy@naver.com"),
        
    ]
}
