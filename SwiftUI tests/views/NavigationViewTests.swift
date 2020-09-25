//
//  NavigationViewTests.swift
//  SwiftUI tests
//
//  Created by Federico Lopez on 25/09/2020.
//

import SwiftUI

// https://www.hackingwithswift.com/articles/216/complete-guide-to-navigationview-in-swiftui
struct NavigationViewTests: View {
    var body: some View {
        
        NavigationView {
            ColoredView(color: .constant(.green),
                        title: .constant("Green"))
        }
        
    }
}

struct NavigationViewTests_Previews: PreviewProvider {
    static var previews: some View {
        NavigationViewTests()
    }
}
