//
//  ButtonComponents.swift
//  SwiftUI tests
//
//  Created by Federico Lopez on 24/09/2020.
//

import SwiftUI

struct ButtonComponents: View {
    var body: some View {
        
        let BG =  Rectangle().foregroundColor(.red)
        let profileIcon = UIImage(named: "profileIcon.png")!
        
        /*
        Button(action: {
            print("asdasd")
        }, label: {
            VStack {
                Image(uiImage: profileIcon)
                    .renderingMode(.original)
                Text("Tap the button")
                    .foregroundColor(.white)
                    .fontWeight(.heavy)
                    .padding([.leading, .trailing, .bottom], /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                    .shadow(color: .black, radius: 1, x: 1.5, y: 1.5)
            }
        })
            .background(BG)
            .cornerRadius(20)
            */
            
        VStack(alignment: .leading, spacing: 10, content: {
            Text("Placeholder")
            Text("ddd")
        }).background(BG)
    }
}

struct ButtonComponents_Previews: PreviewProvider {
    static var previews: some View {
        ButtonComponents()
    }
}
