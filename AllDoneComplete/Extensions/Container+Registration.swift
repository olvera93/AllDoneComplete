//
//  Container+Registration.swift
//  AllDoneComplete
//
//  Created by Gonzalo Olvera on 20/10/25.
//

import Factory

extension Container {
    var appInfoStore: Factory<AppInfoStore> {
        self { MainActor.assumeIsolated { AppInfoStore() } }.singleton
    }
}

