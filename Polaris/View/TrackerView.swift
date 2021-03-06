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
    @State var showingSheet = false
    let emojiSize = 25.0
    let lastWeekDailySurveys = CoreDataController.shared.loadLastWeekDailySurveys()
    
    var body: some View{
        NavigationView {
            ScrollView {
                VStack{
                    MoodView(lastWeekSurveys: lastWeekDailySurveys)
                    ReasonsView(lastWeekSurveys: lastWeekDailySurveys)
                }
                .navigationTitle(Text("Statistics"))
                .navigationBarItems(trailing:                         Button("Notification") {
                    showingSheet.toggle()
                }
                                        .sheet(isPresented: $showingSheet) {
                    
                    if #available(iOS 15, *) {
                        NotificationModalView()
                    } else {
                        // Fallback on earlier versions
                    }
                }
                )
            }
        } //scrollview
    } //navview
    
}//body
struct TrackerView_Previews: PreviewProvider {
    static var previews: some View {
        TrackerView()
    }
}
