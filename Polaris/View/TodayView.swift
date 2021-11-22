//
//  TodayPage.swift
//  Polaris
//
//  Created by Antonio Iacono on 16/11/21.
//
//

import SwiftUI



struct TodayView: View {
    
    @State private var hideStatusBar = false
    @State private var date = "15 November 2021"
    @Binding var showModal: Bool
    
    
    var body: some View {
        
        
        //ScrollView {
        NavigationView{
            ScrollView {
                VStack(spacing: 50.0){
                                  
                    EmojiSelectionView()
                    
                    ReasonSelectionView()
                    
                    ThoughtView()
    
                }.navigationTitle(date)
                    .padding(.top,80)
                    .statusBar(hidden: false)
                
            }
        }
    }
    
    
    
    
    
}



struct TodayView_Previews: PreviewProvider {
    static var previews: some View {
        
        TodayView(showModal: .constant(true))
    }
}



