//
//  Post.swift
//  IstagramPractice
//
//  Created by 정회승 on 2023/07/13.
//

import Foundation
import Firebase

struct Post: Identifiable, Hashable, Codable {
    let id: String
    let ownerUid: String
    let caption: String
    var likes: Int
    let imageUrl: String
    let timestamp: Timestamp
    var user: User?
}

extension Post {
    static var MOCK_POSTS: [Post] = [
        .init(id: NSUUID().uuidString, ownerUid: NSUUID().uuidString, caption: "This is some test caption for now", likes: 123, imageUrl: "3", timestamp: Timestamp(), user: User.MOCK_USERS[1]
             ),
        .init(id: NSUUID().uuidString, ownerUid: NSUUID().uuidString, caption: "뿡뿡", likes: 23, imageUrl: "4", timestamp: Timestamp(), user: User.MOCK_USERS[2]
             ),
        .init(id: NSUUID().uuidString, ownerUid: NSUUID().uuidString, caption: "빵빵", likes: 423, imageUrl: "5", timestamp: Timestamp(), user: User.MOCK_USERS[2]
             ),
        .init(id: NSUUID().uuidString, ownerUid: NSUUID().uuidString, caption: "똥똥", likes: 4423, imageUrl: "2", timestamp: Timestamp(), user: User.MOCK_USERS[2]
             ),
        .init(id: NSUUID().uuidString, ownerUid: NSUUID().uuidString, caption: "띵띵", likes: 223, imageUrl: "6", timestamp: Timestamp(), user: User.MOCK_USERS[3]
             ),
    ]
}
