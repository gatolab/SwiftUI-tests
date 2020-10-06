//
//  ScrollViewTests.swift
//  SwiftUI tests
//
//  Created by Federico Lopez on 06/10/2020.
//

import SwiftUI

struct ScrollViewTests: View {
    
    private var greenHeight: CGFloat = 100
    
    var body: some View {
        
        // VERTICAL
         VStack(spacing: 0) {
            Rectangle()
                .foregroundColor(.green)
                .frame(height: self.greenHeight)
            
            ScrollView(.vertical, showsIndicators: true) {
                VStack(spacing: 1) {
                    ForEach(0..<20) { n in
                        HStack {
                            Spacer()
                            Text("Test text \(n)")
                                .frame(width: 250, height: 35)
                                .background(Color.yellow)
                            Spacer()
                        }
                    }
                }
            }.frame(height: 120).background(Color.red)
            
            Rectangle()
                .foregroundColor(.green)
                .frame(height: self.greenHeight)
        }
        
        /*
        // HORIZONTAL
        VStack(spacing: 0) {
            Rectangle()
                .foregroundColor(.green)
                .frame(height: self.greenHeight)
            
            ScrollView(.horizontal, showsIndicators: true) {
                HStack(spacing: 1) {
                    ForEach(0..<15) { n in
                        HStack {
                            Text("Test text \(n)")
                                .frame(width: 175, height: 150)
                                .background(Color.yellow)
                        }
                    }
                }
            }.frame(height: 150).background(Color.red)
            
            Rectangle()
                .foregroundColor(.green)
                .frame(height: self.greenHeight)
        }
        */
        
        
    }
}

struct ScrollViewTests_Previews: PreviewProvider {
    static var previews: some View {
        ScrollViewTests()
    }
}
