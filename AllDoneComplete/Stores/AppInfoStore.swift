//
//  AppInfoStore.swift
//  AllDoneComplete
//
//  Created by Gonzalo Olvera on 20/10/25.
//

import Foundation


final class AppInfoStore {
    let name: String = "AllDone"
    let description: String = "All Done is a must app for anyone who wants to get their life organized. It helps you manage your tasks."
    let developer: String = "Gonzalo Olvera"
    var version: String {
        if let version = Bundle.main.infoDictionary?["CFBundleShortVersionString"] as? String {
            return version
        }
        return "-"
    }
    var compatibillity: String {
        if let minVersion = Bundle.main.infoDictionary?["MinimumOSVersion"] as? String {
            return "iOS \(minVersion)+"
        }
        return "-"
    }
}
