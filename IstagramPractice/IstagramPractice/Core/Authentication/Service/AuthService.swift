//
//  AuthService.swift
//  IstagramPractice
//
//  Created by 정회승 on 2023/07/14.
//

import Foundation
import FirebaseAuth

class AuthService {
    
    @Published var userSession: FirebaseAuth.User?
    
    static let shared = AuthService()
    
    init() {
        self.userSession = Auth.auth().currentUser
    }
    
    func login(withEmail email: String, password: String) async throws {
        
    }
    
    func createUser(email: String, password: String, username: String) async throws {
//        print("Email is \(email)")
//        print("password is \(password)")
//        print("username is \(username)")
        do {
            let result = try await Auth.auth().createUser(withEmail: email, password: password)
            self.userSession = result.user
        } catch {
            print("DEBUG: Failde to register user with error \(error.localizedDescription)")
        }
        
    }
    
    func loadUserData() async throws {
        
    }
    
    func signout() {
        
    }
    
}
