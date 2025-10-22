//
//  AppStartingViewModel.swift
//  AllDoneComplete
//
//  Created by Gonzalo Olvera on 22/10/25.
//

import SwiftUI
import Combine
import Factory

@MainActor
final class AppStartingViewModel: ObservableObject {
    
    @Published var appState: AppState = .auth
    @Injected(\.authStore) var authStore
    private var cancellables = Set<AnyCancellable>()
    
    init() {
        updateAppState()
        setSubscriber()
    }
    
    
}


private extension AppStartingViewModel {
    
     func setSubscriber() {
        authStore.authUpdatePublisher
            .receive(on: DispatchQueue.main)
            .sink { [weak self] _ in
                guard let self else { return }
                updateAppState()
            }
            .store(in: &cancellables)
    }
    
     func getAppState() -> AppState {
        authStore.getAuthenticatedUser() == nil ? .auth : .app
    }
    
     func updateAppState() {
        let currentAppState = getAppState()
        if appState != currentAppState {
            self.appState = currentAppState
        }
    }
    
    
}
