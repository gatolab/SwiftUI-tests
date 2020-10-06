//
//  TextfieldTests.swift
//  SwiftUI tests
//
//  Created by Federico Lopez on 06/10/2020.
//

import SwiftUI

struct TextfieldTests: View {
    
    @State private var name: String = "abc"
    @State private var value: String = "123"
    
    init() {
    }
    
    var colors: some View {
        VStack(spacing: 0) {
            Rectangle()
                .foregroundColor(.green)
                .frame(height: 100)
            
            Rectangle()
                .foregroundColor(.red)
                .frame(height: 100)
            
            Rectangle()
                .foregroundColor(.yellow)
                .frame(height: 100)
            
            Rectangle()
                .foregroundColor(.orange)
                .frame(height: 100)
        }
    }
    
    var body: some View {
        
        ScrollView {
            VStack(spacing: 0) {
                colors
                
                TextField("Enter name", text: $name)
                    .frame(width: 200, height: 45)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .keyboardType(.asciiCapable)
                
                TextField("Enter something", text: $value)
                    .frame(width: 200, height: 45)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .keyboardType(.emailAddress)

                colors
            }
        }.edgesIgnoringSafeArea(.all)
        
    }
}

struct TextfieldTests_Previews: PreviewProvider {
    static var previews: some View {
        TextfieldTests()
    }
}
