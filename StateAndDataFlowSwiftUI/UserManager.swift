//
//  UserManager.swift
//  StateAndDataFlowSwiftUI
//
//  Created by Aleksandr F. on 20.05.2022.
//

import Foundation
import SwiftUI

final class UserManager: ObservableObject {
    @AppStorage(wrappedValue: "", "name") var user: String
}
