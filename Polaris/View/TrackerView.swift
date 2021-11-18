//
//  ContentView.swift
//  Polaris
//
//  Created by Abigail De Micco on 15/11/21.
//

import SwiftUI

struct TrackerView: View {
    var StartDay = 1
    var StartMonth = 11
    var StartYear = 2021
    
    var EndDay = 7
    var EndMonth =  11
    var EndYear = 2021
    
    @State private var date = Date()
    let emojiSize = 25.0
    let dateRange: ClosedRange<Date> = {
        let calendar = Calendar.current
        let startComponents = DateComponents(year: StartYear, month: StartMonth, day: StartYear)
        let endComponents = DateComponents(year: EndYear, month: EndMonth, day: EndDay, hour: 23, minute: 59, second: 59)
        return calendar.date(from:startComponents)!
        ...
        calendar.date(from:endComponents)!
    }()
    
    var body: some View{
        NavigationView {
            
            VStack{ //metto in fila i tre rettangoli
                
                ZStack{
                    RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Corner Radius@*/10.0/*@END_MENU_TOKEN@*/)
                        .foregroundColor(.init(red: 0.2, green: 0.2, blue: 0.2))
                        .brightness(0.5)
                        .frame(width: UIScreen.main.bounds.width - 32, height: 150)
                    
                    VStack {
                    Text ("Mood")

                    HStack (spacing: 5.0){
                        ForEach(Emojis){ Emoji in
                            
                            Text(Emoji.name).font(.system(size: Emoji.emojiSize))
                        }
                    } //hstack
                    } //vstack
                } //zstack primo rettangolo
                
                ZStack {
                    RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Corner Radius@*/10.0/*@END_MENU_TOKEN@*/)
                        .foregroundColor(.init(red: 0.2, green: 0.2, blue: 0.2))
                        .brightness(0.5)
                        .frame(width: UIScreen.main.bounds.width - 32, height: 150)
                    VStack (spacing: 10.0){
                        Text ("Reasons")
                        HStack {
                            Text ("Family")
                            ProgressView(value: 0.7)
                                .frame(width: 220.0)
                        }
                        HStack {
                            Text ("University")
                            ProgressView(value: /*@START_MENU_TOKEN@*/0.5/*@END_MENU_TOKEN@*/)
                                .frame(width: 220.0)
                        }
                        HStack{
                            Text ("Friends")
                            ProgressView(value: /*@START_MENU_TOKEN@*/0.5/*@END_MENU_TOKEN@*/)
                                .frame(width: 220.0)
                        }
                    } .padding(.leading, 30.0)
                } //zstack secondo rettangolo
                
                ZStack(alignment: .center) {
                    RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Corner Radius@*/10.0/*@END_MENU_TOKEN@*/)
                        .foregroundColor(.init(red: 0.2, green: 0.2, blue: 0.2))
                        .brightness(0.5)
                        .frame(width: UIScreen.main.bounds.width - 32, height: 150)
                    
                    DatePicker(
                        "Start Date",
                        selection: $date,
                        in: dateRange,
                        displayedComponents: [.date]
                    )
                        .frame(width: UIScreen.main.bounds.width - 32, height: 150)
                } //zstack terzo rettangolo
            } //vstack tutti i rettangoli
            .navigationTitle("Feelings Calendar")
        } //navigationview
    } //body
}//contentview
struct TrackerView_Previews: PreviewProvider {
    static var previews: some View {
        TrackerView()
    }
}

