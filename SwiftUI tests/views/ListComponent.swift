//
//  ListComponent.swift
//  SwiftUI tests
//
//  Created by Federico Lopez on 25/09/2020.
//

import SwiftUI

struct ListComponent: View {
    
    let persons = [
        Person(name: "Cosme", lastName: "Fulanito"),
        Person(name: "Juan", lastName: "Perez")
    ]
    
    var body: some View {
        
        List(self.persons) { p in
            Text("\(p.lastName!) \(p.name!)")
        }
        
    }
}

struct ListComponent_Previews: PreviewProvider {
    static var previews: some View {
        ListComponent()
    }
}
