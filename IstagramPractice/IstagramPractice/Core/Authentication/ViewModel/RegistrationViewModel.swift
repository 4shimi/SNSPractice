//
//  RegistrationViewModel.swift
//  IstagramPractice
//
//  Created by 정회승 on 2023/07/14.
//

import Foundation

class RegistrationViewModel: ObservableObject {
    @Published var username = ""
    @Published var email = ""
    @Published var password = ""

    func createUser() async throws {
        try await AuthService.shared.createUser(email: email, password: password, username: username)
    }
}
