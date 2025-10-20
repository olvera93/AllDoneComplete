//
//  AllDoneCompleteApp.swift
//  AllDoneComplete
//
//  Created by Gonzalo Olvera on 20/10/25.
//

import SwiftUI
import FirebaseCore

@main
struct AllDoneCompleteApp: App {
    
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    
    var body: some Scene {
        WindowGroup {
            AppStartingView()
        }
    }
}

class AppDelegate: NSObject, UIApplicationDelegate {
  func application(_ application: UIApplication,
                   didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
    FirebaseApp.configure()

    return true
  }
}
