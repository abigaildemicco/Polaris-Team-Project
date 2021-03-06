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
    @Binding var showModal: Bool
    @State private var date = "25 November 2021"
   
    
   // let timeFormatter = Calendar.current
//    timeFormatter.dateFormat = "HH:ss"
//    let stringDate = dateFormatter.string(from: time)
    
//    var datet = Date(timeIntervalSince1970: TimeInterval(NSDate().timeIntervalSince1970))
//    var calendar = Calendar.current
    //var date = calendar.component( .day ,from: datet)
//
//    let myCalendar = Calendar(identifier: .gregorian)
//    let ymd = myCalendar.dateComponents([.year, .month, .day], from: Date())
//
    
    var body: some View {
        
        
        //ScrollView {
        NavigationView{
            ScrollView {
                VStack{
                                  
                    EmojiSelectionView()
                    
                    ReasonSelectionView()
                    
                    ThoughtView()
    
                }.navigationTitle(date)
//                    .padding(.top,20)
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



