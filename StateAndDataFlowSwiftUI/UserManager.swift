//
//  UserManager.swift
//  StateAndDataFlowSwiftUI
//
//  Created by Aleksandr F. on 20.05.2022.
//

import Foundation
import SwiftUI

final class UserManager: ObservableObject {
    @Published var isRegistered = false
    @AppStorage("name") var name = ""
}
