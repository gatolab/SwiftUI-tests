//
//  TextComponents.swift
//  SwiftUI tests
//
//  Created by Federico Lopez on 24/09/2020.
//

import SwiftUI

struct TextComponents: View {

    var body: some View {

        // Some text components
        let BG =  Rectangle().foregroundColor(.red)

        VStack {
            Text("simple")
                .font(.title)
                .background(BG)
                .frame(width: 200, height: 35, alignment: .topLeading)
            
            Text("text with some shadow")
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .shadow(color: .red, radius: 0.5, x: 1.5, y: 1.5)
                .padding(.bottom, /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
            
            Text("text + color + bgColor + padding")
                .foregroundColor(.yellow)
                .padding(10)
                .background(BG)
                .border(Color.black, width: 3)
                .cornerRadius(13)
                
        }
    }
}

struct TextComponents_Previews: PreviewProvider {
    static var previews: some View {
        TextComponents()
    }
}
