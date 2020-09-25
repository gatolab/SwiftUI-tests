//
//  SliderComponent.swift
//  SwiftUI tests
//
//  Created by Federico Lopez on 25/09/2020.
//

import SwiftUI

struct SliderComponent: View {
    
    @Binding var value: Double
    var label: String
    
    var body: some View {
            
        VStack {
            Slider(value: $value, in: 0...255, step: 1)
            Text("\(label): \(Int(self.value))")
        }.padding([.leading, .trailing])
            
    }
}

struct SliderComponent_Previews: PreviewProvider {
    static var previews: some View {
        SliderComponent(value: Binding.constant(2), label: "Value")
    }
}
