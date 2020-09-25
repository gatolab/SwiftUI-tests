//
//  BindingAndComponents.swift
//  SwiftUI tests
//
//  Created by Federico Lopez on 25/09/2020.
//

import SwiftUI

struct BindingAndComponents: View {
    
    @State var r: Double
    @State private var g: Double = 0
    @State private var b: Double = 0
    
    var body: some View {
    
        VStack {
            Rectangle()
                .frame(width: 100, height: 100, alignment: .center)
                .foregroundColor(Color(red: self.r/255, green: self.g/255, blue: self.b/255, opacity: 1))
                .padding(.bottom, 20)
        
            SliderComponent(value: $r, label: "Red")
            SliderComponent(value: $g, label: "Green")
            SliderComponent(value: $b, label: "Blue")
        }
        
    }
}

struct BindingAndComponents_Previews: PreviewProvider {
    static var previews: some View {
        BindingAndComponents(r: 0)
    }
}
