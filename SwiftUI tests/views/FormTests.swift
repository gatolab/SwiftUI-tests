//
//  FormTests.swift
//  SwiftUI tests
//
//  Created by Federico Lopez on 02/10/2020.
//

import SwiftUI

struct FormTests: View {
    
    @State private var state = false
    @State private var text = "123"
    @State private var num = 0
    
    var body: some View {
        
        Form {
            
            Section {
                Text("1")
                Text("2")
            }
            
            Group {
                Toggle(isOn: $state) {
                    Text("Toggle")
                }
            }
            
            TextField("title", text: $text)
                .keyboardType(.asciiCapable)
            
            Section {
                Picker("Picker", selection: $num) {
                    Text("opcion 1")
                    Text("opcion 2")
                }
            }
            
        }
        
    }
}

struct FormTests_Previews: PreviewProvider {
    static var previews: some View {
        FormTests()
    }
}
