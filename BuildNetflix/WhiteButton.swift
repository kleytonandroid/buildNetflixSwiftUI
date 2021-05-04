//
//  WhiteButton.swift
//  BuildNetflix
//
//  Created by Kleyton Santos on 03/05/21.
//

import SwiftUI

struct WhiteButton: View {
    
    var text: String
    var imageName: String
    
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
        .background(Color.white)
        .foregroundColor(.black)
        .cornerRadius(/*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
    }
}

struct WhiteButton_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ZStack {
                Color.black
                    .edgesIgnoringSafeArea(.all)
                
                WhiteButton(text: "Play", imageName: "play.fill") {
                    print("Tapped")
                }
            }
        }
    }
    
}
