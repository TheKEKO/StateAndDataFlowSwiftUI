//
//  RegisterView.swift
//  StateAndDataFlowSwiftUI
//
//  Created by Aleksandr F. on 20.05.2022.
//

import SwiftUI

struct RegisterView: View {
    @EnvironmentObject private var userManger: UserManager
    @State private var name = ""
    
    var body: some View {
        VStack {
            HStack {
                TextField("Enter your name...", text: $name)
                    .multilineTextAlignment(.center)
                Text("\(name.count)")
                    .foregroundColor(name.count < 3 ? .red : .green)
                    .padding(.trailing, 20)
            }
            Button(action: registerUser) {
                HStack {
                    Image(systemName: "checkmark.circle")
                    Text("OK")
                }
            }
            .disabled(name.count < 3)
        }
    }
    
    private func registerUser() {
        if !name.isEmpty {
            userManger.name = name
            userManger.isRegistered.toggle()
        }
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
