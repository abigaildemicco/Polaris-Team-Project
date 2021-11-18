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
    
    //    var StartDay = 1
    //    var StartMonth = 11
    //    var StartYear = 2021
    //
    //    var EndDay = 7
    //    var EndMonth =  11
    //    var EndYear = 2021
    
    @State private var date = Date()
    let emojiSize = 25.0
    let dateRange: ClosedRange<Date> = {
        let calendar = Calendar.current
        let startComponents = DateComponents(year: 2020, month: 1, day: 1)
        let endComponents = DateComponents(year: 2021, month: 12, day: 31, hour: 23, minute: 59, second: 59)
        return calendar.date(from:startComponents)!
        ...
        calendar.date(from:endComponents)!
    }()
    
    var body: some View{
        NavigationView {
            
            //                ZStack {
            //                 Rectangle()
            //                 .fill(Color.blue).ignoresSafeArea()
            //               }
            
            VStack{ //metto in fila i tre rettangoli
                ZStack{
                    VStack {
                        Text ("Mood").bold()
                        
                        HStack (spacing: 5.0){
                            ForEach(Emojis){ Emoji in
                                
                                Text(Emoji.name).font(.system(size: Emoji.emojiSize))
                            }
                        } //hstack
                    }  .padding()
                        .background(Color.gray)
                        .clipShape(RoundedRectangle(cornerRadius: 25.0, style: .continuous))
                        .padding() //vstack
                } //zstack primo rettangolo
                
                ZStack {
                    VStack (spacing: 10.0){
                        Text ("Reasons").bold()
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
                    }  .padding()
                        .background(Color.gray)
                        .clipShape(RoundedRectangle(cornerRadius: 25.0, style: .continuous))
                        .padding()
                } //zstack secondo rettangolo
                
                ZStack(alignment: .center) {
                    VStack{
                        DatePicker(
                            "Start Date",
                            selection: $date,
                            in: dateRange,
                            displayedComponents: [.date]
                        )
                    } //vstack
                    .padding()
                    .background(Color.gray)
                    .clipShape(RoundedRectangle(cornerRadius: 25.0, style: .continuous))
                    .padding()
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
