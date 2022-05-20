//
//  StateAndDataFlowSwiftUIApp.swift
//  StateAndDataFlowSwiftUI
//
//  Created by Aleksandr F. on 19.05.2022.
//

import SwiftUI

@main
struct StateAndDataFlowSwiftUIApp: App {
    @StateObject private var userManager = UserManager()
    
    var body: some Scene {
        WindowGroup {
            StarterView()
                .environmentObject(userManager)
        }
    }
}
