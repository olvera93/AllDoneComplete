//
//  AppStartingView.swift
//  AllDoneComplete
//
//  Created by Gonzalo Olvera on 20/10/25.
//

import SwiftUI

struct AppStartingView: View {
    
    @StateObject private var viewModel: AppStartingViewModel = .init()
    
    var body: some View {
        Group {
            switch viewModel.appState {
            case .auth:
                Text("Auth View")
            case .app:
                NavigationStack {
                    Text("App")
                }
            }
        }
        .animation(.spring, value: viewModel.appState)
    }
}

#Preview {
    AppStartingView()
}
