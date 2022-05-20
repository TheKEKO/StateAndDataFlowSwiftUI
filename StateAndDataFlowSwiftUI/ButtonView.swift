//
//  ButtonView.swift
//  StateAndDataFlowSwiftUI
//
//  Created by Aleksandr F. on 20.05.2022.
//

import SwiftUI

struct ButtonView: View {
    
    let action: () -> Void
    let titleOfButton: String
    let color: Color
    
    var body: some View {
        Button(action: action) {
            Text(titleOfButton)
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.white)
        }
        .frame(width: 200, height: 60)
        .background(color)
        .cornerRadius(20)
        .overlay {
            RoundedRectangle(cornerRadius: 20)
                .stroke(.black, lineWidth: 4)
        }
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView(action: {}, titleOfButton: "Preview", color: .black)
    }
}
