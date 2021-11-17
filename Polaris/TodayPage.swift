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
    let emojiSize = 60.0
    let reasonsSize = 15.0
    let reasonsRadious = 15.0
    
    
    var body: some View {
        
        
        //ScrollView {
        
        VStack(spacing: 50.0){
            
            ZStack{
                RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Corner Radius@*/10.0/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.init(red: 0.2, green: 0.2, blue: 0.2))
                    .brightness(0.65)
                    .frame(width: UIScreen.main.bounds.width - 32, height: 150)
                
                HStack (spacing: 5.0){
                    
                    visualButtonEmoji()
                    
                }
                
            }.padding(.top)
            
            
            ZStack{
                RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Corner Radius@*/10.0/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.init(red: 0.2, green: 0.2, blue: 0.2))
                    .brightness(0.65)
                    .frame(width: UIScreen.main.bounds.width - 32, height: 150)
                VStack{
                    Text("Why?").font(.system(size: 30, weight: .medium  , design: .rounded))
                    
                    HStack(spacing: 2.0){
                        
                        visualButtonReasons()
                        
                    }
                }
            }
                ZStack{
                    RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Corner Radius@*/10.0/*@END_MENU_TOKEN@*/)
                        .foregroundColor(.init(red: 0.2, green: 0.2, blue: 0.2))
                        .brightness(0.65)
                        .frame(width: UIScreen.main.bounds.width - 32, height: 150)
                    
                }
                
                
            }.navigationTitle(date)
        }
        
        
    
    
    private func visualButtonEmoji() -> some View{
        ForEach(Emojis){ Emoji in
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                Text(Emoji.name).font(.system(size: Emoji.emojiSize))
            }
        }
    }
    
    private func visualButtonReasons() -> some View{
        ForEach(Reasons) { Reason in
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                Text(Reason.name).font(.system(size: 20.0))
                    .padding(.all)
                    .foregroundColor(.white)
                    .background(Color.blue)
                    .cornerRadius(20)
                    .frame(width: 150, height: 50 ,alignment: .center )
                    .scaledToFit()
                    
            }
            
        }
    }
    
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{ TodayPage()}
    }
}
