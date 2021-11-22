//
//  CalendarView.swift
//  Polaris
//
//  Created by Antonio Iacono on 19/11/21.
//


import SwiftUI

struct CalendarView: View {
    @State var currentDate : Date = Date ()
    var body: some View {
        NavigationView{
        ScrollView(.vertical, showsIndicators: false){
            VStack(spacing:20) {
                CustomDataPicker(currentDate: $currentDate)
            }
        }
        .navigationBarTitle(Text("Calendar"))
    }
       
    }}
    

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        CalendarView()
    }
}
