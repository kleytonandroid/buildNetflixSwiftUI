//
//  PrimaryButton.swift
//  BuildNetflix
//
//  Created by Kleyton Santos on 03/05/21.
//

import SwiftUI

struct PrimaryButton: View {
    
    var text: String
    var imageName: String
    
    var backgroundColor: Color = Color.white
    var foregroundColor: Color = Color.black
    
    var action: () -> Void
    
    var body: some View {
        Button(action: action, label: {
            HStack {
                Spacer()
                
                Image(systemName: imageName)
                    .font(.headline)
                Text(text)
                    .bold()
                    .font(.system(size: 16))
                
                Spacer()
            }
        })
        .padding(.vertical, 6)
        .background(backgroundColor)
        .foregroundColor(foregroundColor)
        .cornerRadius(/*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
    }
}

struct PrimaryButton_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ZStack {
                Color.black
                    .edgesIgnoringSafeArea(.all)
                
                PrimaryButton(text: "Play", imageName: "play.fill") {
                    print("Tapped")
                }
            }
        }
    }
    
}
