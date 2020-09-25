//
//  SFSymbolsTest.swift
//  SwiftUI tests
//
//  Created by Federico Lopez on 24/09/2020.
//

import SwiftUI

// https://developer.apple.com/design/human-interface-guidelines/sf-symbols/overview/

struct SFSymbolsTest: View {
    var body: some View {
        
        VStack(alignment: .leading, spacing: 40) {
            Image(systemName: "car.fill")
                .foregroundColor(.red)
                .font(.largeTitle)
                .padding()
                .background(Color.yellow)
                //.scaleEffect(2)
                //.rotationEffect(Angle(degrees: -45))
            
            Text("abc")
        }
        
    }
}

struct SFSymbolsTest_Previews: PreviewProvider {
    static var previews: some View {
        SFSymbolsTest()
    }
}
