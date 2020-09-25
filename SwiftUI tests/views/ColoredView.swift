//
//  ColoredView.swift
//  SwiftUI tests
//
//  Created by Federico Lopez on 25/09/2020.
//

import SwiftUI

struct ColoredView: View {
    
    @Binding var color: Color
    @Binding var title: String
    
    @State var tagToGo: String?
    
    var body: some View {
        
        VStack() {
            NavigationLink(
                destination: Text("FIRST!"),
                tag: "first",
                selection: $tagToGo,
                label: { EmptyView() }
            )
            NavigationLink(
                destination: Text("SECOND!"),
                tag: "second",
                selection: $tagToGo,
                label: { EmptyView() }
            )
            
            Button(action: {
                self.tagToGo = "first"
            }, label: {
                Text("First")
                    .bold()
                    .foregroundColor(.black)
            }).padding(.bottom, 30)
            Button(action: {
                self.tagToGo = "second"
            }, label: {
                Text("Second")
                    .bold()
                    .foregroundColor(.black)
            })
            
        }
            .navigationBarTitle("lalala", displayMode: .inline)
            .navigationBarItems(leading:
                                    Button(action: {
                                        print("ASDASDA")
                                    }, label: {
                                        Text("Button")
                                    })
            )
        
    }
    
    
    /*
    @State var gotoRed = false
    @State var tagToGo: String?
    
    var body: some View {
        
        ZStack {
            Rectangle()
                .foregroundColor(self.color)
                .edgesIgnoringSafeArea(.all)
                .navigationBarTitle("Colored view", displayMode: .inline)
    
            
            let orangeView = ColoredView(
                color: .constant(Color.orange),
                title: .constant("Orange"))
            
            let redView = ColoredView(
                color: .constant(Color.red),
                title: .constant("Red"))
            
            
            
            
            
            
            VStack(spacing: 30) {
                NavigationLink(
                    destination: orangeView,
                    label: {
                        Text("go to ORANGE")
                            .bold()
                            .foregroundColor(.black)
                    })
                
                NavigationLink(
                    destination: redView,
                    isActive: .constant(self.gotoRed),
                    label: {
                        Button(action: {
                            self.gotoRed.toggle()
                        }, label: {
                            Text("go to RED")
                                .bold()
                                .foregroundColor(.black)
                        })
                    })
                
            }

        }
        
    }*/
}

struct ColoredView_Previews: PreviewProvider {
    static var previews: some View {
        ColoredView(color: .constant(.yellow),
                    title: .constant("Yellow"))
    }
}
