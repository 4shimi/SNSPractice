//
//  User.swift
//  IstagramPractice
//
//  Created by 정회승 on 2023/07/13.
//

import Foundation

struct User: Identifiable, Hashable, Codable {
    let id: String
    var username: String
    var profileImageUrl: String?
    var fullname: String?
    var bio: String?
    let email: String
}

extension User {
    static var MOCK_USERS: [User] = [
        .init(id: NSUUID().uuidString, username: "회승", profileImageUrl: nil, fullname: nil, bio: "돼지", email: "king81597@naver.com"),
        .init(id: NSUUID().uuidString, username: "시저", profileImageUrl: "Character", fullname: "Caesar", bio: "씨쪄", email: "caesar@naver.com"),
        .init(id: NSUUID().uuidString, username: "노바", profileImageUrl: "Character", fullname: "Nova", bio: "노빠", email: "nova@naver.com"),
        .init(id: NSUUID().uuidString, username: "제이미", profileImageUrl: "Character", fullname: "Jamie", bio: "쩨이미", email: "jamie@naver.com"),
        .init(id: NSUUID().uuidString, username: "핀", profileImageUrl: "Character", fullname: "Pin", bio: "삔", email: "pin@naver.com"),
        .init(id: NSUUID().uuidString, username: "지구", profileImageUrl: "Character", fullname: "Jigu", bio: "찌꾸", email: "jigu@naver.com"),
        .init(id: NSUUID().uuidString, username: "아지", profileImageUrl: "Character", fullname: "Azhy", bio: "아찌", email: "azhy@naver.com"),
        
    ]
}
