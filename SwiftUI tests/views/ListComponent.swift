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
    
    
    init() {
        UITableView.appearance().tableFooterView = UIView()
        UITableView.appearance().separatorStyle = .none
    }
    
    var body: some View {
        
        /*
        ZStack {
            List {
                Text("Item 1")
                    .background(Color.yellow)
                    .listRowInsets(EdgeInsets())
                    .listRowBackground(Color.green)
                        
                Text("Item 2")
                    .background(Color.orange)
                    .listRowInsets(EdgeInsets())
                    .listRowBackground(Color.pink)
            }.environment(\.defaultMinListRowHeight, 70)
        }
        */
        
        /*
        List {
        
            Text("miau miau miau")
                .foregroundColor(.red)
        
            ForEach(0..<5) { n in
                Text("List item \(n+1)")
            }
        }
        */
        
        /*
        List {
            Section(header: Text("A section")) {
                Text("A1")
                Text("A2")
            }
            
            Section(header: Text("B section")) {
                Text("B1")
            }
        }.environment(\.defaultMinListHeaderHeight, 50)
        */
        
        /*
        List(0..<5) { n in
            Text("List item \(n+1)")
        }
        */
        
        List(persons) { p in
            Text("Name: \(p.name!)")
        }
        
    }
}

struct ListComponent_Previews: PreviewProvider {
    static var previews: some View {
        ListComponent()
    }
}
