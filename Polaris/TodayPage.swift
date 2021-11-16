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
           VStack(spacing: 50.0){
               
               ZStack{
                   RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Corner Radius@*/10.0/*@END_MENU_TOKEN@*/)
                       .foregroundColor(.init(red: 0.2, green: 0.2, blue: 0.2))
                       .brightness(0.5)
                       .frame(width: UIScreen.main.bounds.width - 32, height: 150)
                   
                   HStack (spacing: 10.0){
                       
                       Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                           Text("😢")
                       }
                       Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                           Text("🙁")
                       }
                       Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                           Text("😐")
                       }
                       Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                           Text("☺️")
                       }
                       Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                           Text("😁")
                       }
                       
                   }
                   
               }.padding(.top)
               
               
               ZStack{
                   RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Corner Radius@*/10.0/*@END_MENU_TOKEN@*/)
                       .foregroundColor(.init(red: 0.2, green: 0.2, blue: 0.2))
                       .brightness(0.5)
                       .frame(width: UIScreen.main.bounds.width - 32, height: 150)
                   
               }
              
               ZStack{
                   RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Corner Radius@*/10.0/*@END_MENU_TOKEN@*/)
                       .foregroundColor(.init(red: 0.2, green: 0.2, blue: 0.2))
                       .brightness(0.5)
                       .frame(width: UIScreen.main.bounds.width - 32, height: 150)
                   
               }
               
 
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
