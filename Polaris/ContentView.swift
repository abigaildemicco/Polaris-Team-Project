//
//  ContentView.swift
//  Polaris
//
//  Created by Abigail De Micco on 15/11/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Rectangle()
                .foregroundColor(.init(red: 0.2, green: 0.2, blue: 0.2))
                .brightness(0.5)
                .frame(width: 350, height: 150)
                .position(x:195, y:250)
            
            Rectangle()
                .foregroundColor(.init(red: 0.2, green: 0.2, blue: 0.2))
                .brightness(0.5)
                .frame(width: 350, height: 150)
                .position(x:195, y:425)
            Rectangle()
                .foregroundColor(.init(red: 0.2, green: 0.2, blue: 0.2))
                .brightness(0.5)
                .frame(width: 350, height: 150)
                .position(x:195, y: 600)
                
    }//zstack
        
}//view

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
} //contentview
