//
//  View+InfinityFrame.swift
//  AllDoneComplete
//
//  Created by Gonzalo Olvera on 22/10/25.
//

import SwiftUI

extension View {
    func infinityFrame() -> some View {
        self
            .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}
