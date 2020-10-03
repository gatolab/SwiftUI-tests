//
//  PresentViewTest.swift
//  SwiftUI tests
//
//  Created by Federico Lopez on 02/10/2020.
//

import SwiftUI

struct PresentViewTest: View {
    @State private var showModal = true
    
    var modal: some View {
        VStack {
            Text("Modal")
            Button {
                self.showModal = false
            } label: {
                Text("Cerrar modal")
            }
        }
    }
    
    
    
    var body: some View {
        
        
        
        VStack {
            Text("test")
            Text("123")
        }.sheet(isPresented: $showModal) {
            modal
        }
        
        /*
        .fullScreenCover(isPresented: $showModal) {
            modal
        }
 */
        
    }
}

struct PresentViewTest_Previews: PreviewProvider {
    static var previews: some View {
        PresentViewTest()
    }
}
