//
//  StatePropertiesTest.swift
//  SwiftUI tests
//
//  Created by Federico Lopez on 24/09/2020.
//

import SwiftUI

struct StatePropertiesTest: View {
    
    @State private var isLiked = false
    @State private var likes = 99
    
    var body: some View {
        
        let symbol = isLiked ? "heart.fill" : "heart"
        
        Button(action: {
            self.isLiked.toggle()
            let sum = self.isLiked ? 1 : -1
            self.likes += sum
            
        }, label: {
            ZStack {
                Image(systemName: symbol)
                .resizable()
                .foregroundColor(.red)
                .frame(width: 100, height: 85, alignment: .center)
                
                Text(String(self.likes))
                .foregroundColor(.black)
            }
        })
        
        
        
    }
}

struct StatePropertiesTest_Previews: PreviewProvider {
    static var previews: some View {
        StatePropertiesTest()
    }
}
