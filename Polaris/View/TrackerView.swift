//
//  ContentView.swift
//  Polaris
//
//  Created by Abigail De Micco on 15/11/21.
//

//
//  ContentView.swift
//  Polaris
//
//  Created by Abigail De Micco on 15/11/21.
//

import SwiftUI

struct TrackerView: View {
    let emojiSize = 25.0
    var body: some View{
        NavigationView {
            
            //                ZStack {
            //                 Rectangle()
            //                 .fill(Color.blue).ignoresSafeArea()
            //               }
            
            VStack{MoodView()
                ReasonsView()
            }
            .navigationTitle("Stats")
        } //navview
    }//body
    struct TrackerView_Previews: PreviewProvider {
        static var previews: some View {
            TrackerView()
        }
    }
}
