//
//  AuthService.swift
//  ThreadsClone
//
//  Created by Михаил Базылев on 11.05.2024.
//

import Foundation
import FirebaseAuth

class AuthService {
    
    static let shared = AuthService()
    
    @MainActor
    func login(withEmail email: String, password: String) async throws {
        
    }
    
    @MainActor
    func createUser(withEmail email: String, password: String, fullname: String, username: String) async throws {
        do {
            let result = try await Auth.auth().createUser(withEmail: email, password: password)
            print("DEBUG: Create user \(result.user.uid)")
        } catch {
            print("DEBUG: Failed to create user with error \(error.localizedDescription)")
        }
    }
}
