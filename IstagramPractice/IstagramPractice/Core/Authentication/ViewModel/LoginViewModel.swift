//
//  LoginViewModel.swift
//  IstagramPractice
//
//  Created by 정회승 on 2023/07/15.
//

import Foundation

class LoginViewModel: ObservableObject {
    @Published var email = ""
    @Published var password = ""
    
    func signIn() async throws {
      try await  AuthService.shared.login(withEmail: email, password: password)
    }
    
}
