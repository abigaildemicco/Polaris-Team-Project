//
//  TodayPage.swift
//  Polaris
//
//  Created by Antonio Iacono on 16/11/21.
//
//

import SwiftUI



struct TodayView: View {
    
    //@State private var hideStatusBar = false
   // @State private var date = "15 November 2021"

    
 
    var body: some View {
        
        
        //ScrollView {
        
        VStack(spacing: 50.0){
            EmojiSelectionView()
            ReasonSelectionView()

            
            

            ZStack{
                RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Corner Radius@*/10.0/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.init(red: 0.2, green: 0.2, blue: 0.2))
                    .brightness(0.65)
                    .frame(width: UIScreen.main.bounds.width - 32, height: 150)
                
            }
            
            
        }//.navigationTitle(date)
    }
    
    
    
    
    
}



struct TodayView_Previews: PreviewProvider {
    static var previews: some View {
       //NavigationView{ TodayView()}
        TodayView()
    }
}



