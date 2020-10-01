//
//  NavigationViewTests.swift
//  SwiftUI tests
//
//  Created by Federico Lopez on 25/09/2020.
//

import SwiftUI

// https://www.hackingwithswift.com/articles/216/complete-guide-to-navigationview-in-swiftui
struct NavigationViewTests: View {

    @State private var goTo: String?

    init() {
        let myCfg = UINavigationBarAppearance()
        myCfg.configureWithOpaqueBackground()
        myCfg.backgroundColor = .green
        myCfg.titleTextAttributes = [.foregroundColor: UIColor.white]
        myCfg.largeTitleTextAttributes = [.foregroundColor: UIColor.white]
        
        UINavigationBar.appearance().standardAppearance = myCfg
        UINavigationBar.appearance().scrollEdgeAppearance = myCfg
    }


    var body: some View {
        
        /*
        NavigationView {
            ColoredView(color: .constant(.green),
                        title: .constant("Green"))
        }
        */
        
        /*
        NavigationView {
        
            VStack {
                Text("asdasdasd")
                    .navigationBarTitle("hola")
                NavigationLink(
                    destination: Text("Destination")
                        .navigationBarTitle("chau")
                    ,tag: "next",
                    selection: $goTo,
                    label: {Text("Navigate")}
                )
            }
        }
        */
        
        NavigationView {
            
            VStack {
                NavigationLink(
                    destination: Text("Info view!"),
                    tag: "info",
                    selection: $goTo,
                    label: { EmptyView() }
                )
                
                Button(action: {
                    self.goTo = "info"
                }, label: {
                    Text("Button")
                })
            }
            
        }
        
        
    }
}

struct NavigationViewTests_Previews: PreviewProvider {
    static var previews: some View {
        NavigationViewTests()
    }
}
