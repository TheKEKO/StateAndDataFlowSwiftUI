//
//  ContentView.swift
//  StateAndDataFlowSwiftUI
//
//  Created by Aleksandr F. on 19.05.2022.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject private var user: UserManager
    @StateObject private var timer = TimeCounter()
    
    var body: some View {
        VStack {
            Text("Hi, \(user.name)")
                .font(.largeTitle)
                .padding(.top, 80)
            Text("\(timer.counter)")
                .font(.largeTitle)
                .padding(.top, 80)
            Spacer()
            ButtonTimerView(timer: timer)
            ButtonView(action: {user.name = ""},
                       titleOfButton: "LogOut",
                       color: .blue)
            .padding(.top, 200)
        }
        .padding()
    }
}

struct ButtonTimerView: View {
    @ObservedObject var timer: TimeCounter
    
    var body: some View {
        ButtonView(action: timer.startTimer, titleOfButton: timer.buttonTitle, color: .red)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(UserManager())
    }
}


