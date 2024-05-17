//
//  ProfileViewModel.swift
//  ThreadsClone
//
//  Created by Михаил Базылев on 17.05.2024.
//

import Foundation
import Combine

class CurrentUserProfileViewModel: ObservableObject {
    @Published var currentUser: User?
    private var cancellables = Set<AnyCancellable>()
    
    init() {
        setupSubscribers()
    }
    
    private func setupSubscribers() {
        UserService.shared.$currentUser.sink { [weak self] user in
            self?.currentUser = user
        }.store(in: &cancellables)
    }
}
