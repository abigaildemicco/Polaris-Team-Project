//
//  TodayPage.swift
//  Polaris
//
//  Created by Antonio Iacono on 16/11/21.
//
//

import SwiftUI



struct TodayPage: View {
    
    @State private var hideStatusBar = false
    @State var date="15 November 2021"
    
    
    var body: some View {
 
        TabView(selection: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Selection@*/.constant(1)/*@END_MENU_TOKEN@*/) {
       ScrollView {
           VStack{
               //Text(date)
 
           }
       }.tabItem {  Image(systemName: "doc.text.image")
       Text("Today") }.tag(1)
            Text("Tab Content 2")
                .tabItem { Image(systemName:"magnifyingglass.circle")
                Text("Tracker") }.tag(2)
            Text("Tab Content 3")
                .tabItem { Image(systemName:"heart.square")
                Text("Favourites")  }.tag(3)
            Text("Tab Content 4")
                .tabItem { Image(systemName:"info.circle")
                Text("Info")  }.tag(4)
        }.statusBar(hidden: false)
            .navigationTitle(date)
            
    }
}
    


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{ TodayPage()}
    }
}
