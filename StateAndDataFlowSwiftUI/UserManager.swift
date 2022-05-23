//
//  UserManager.swift
//  StateAndDataFlowSwiftUI
//
//  Created by Aleksandr F. on 20.05.2022.
//

import Foundation
import SwiftUI

final class UserManager: ObservableObject {
    
    @Published var user = User()
    
    var nameIsValid: Bool {
        user.name.count >= 3
    }
    
    init() {}
    
    init(user: User) {
        self.user = user
    }
}

struct User: Codable {
    var name = ""
    var isRegistered = false
}
