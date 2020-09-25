//
//  ImageComponents.swift
//  SwiftUI tests
//
//  Created by Federico Lopez on 24/09/2020.
//

import SwiftUI

struct ImageComponents: View {
    var body: some View {
        
        let ww = UIImage(named: "wwoman.jpg")!
        let profileIcon = UIImage(named: "profileIcon.png")!
        let factor: CGFloat = 0.2;
        
        ZStack {
            
            /*
            Image(uiImage: ww)
                .resizable()
                .frame(width: 1080 * factor,
                height: 1347 * factor,
                alignment: .topLeading)
            */
            
            Rectangle()
                .foregroundColor(.red)
                .edgesIgnoringSafeArea(.all)
            
            Image(uiImage: profileIcon)
                .resizable()
                .background(Rectangle().foregroundColor(.white))
                .frame(width: 50, height: 50, alignment: .center)
            
            
            
            /*
            Image(uiImage: ww)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .opacity(0.5)
                .blur(radius: 5)
            
            HStack {
                Text("sarasa")
                Spacer()
            }
            */
            
        }
        
    }
}

struct ImageComponents_Previews: PreviewProvider {
    static var previews: some View {
        ImageComponents()
    }
}
