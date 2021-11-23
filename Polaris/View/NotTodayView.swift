//
//  NotTodayView.swift
//  Polaris
//
//  Created by Antonio Iacono on 23/11/21.
//


import SwiftUI



struct NotTodayView: View {
    
    @State private var hideStatusBar = false
    @Binding var showModal2: Bool
    @State private var date = "15 November 2021"
   
    
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



struct NotTodayView_Previews: PreviewProvider {
    static var previews: some View {
        
        NotTodayView(showModal2: .constant(true))
    }
}
