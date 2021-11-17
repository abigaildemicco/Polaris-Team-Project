//
//  ContentView.swift
//  Polaris
//
//  Created by Abigail De Micco on 15/11/21.
//

import SwiftUI

struct ContentView: View {
    
    @State private var date = Date()
    let dateRange: ClosedRange<Date> = {
        let calendar = Calendar.current
        let startComponents = DateComponents(year: 2020, month: 1, day: 1)
        let endComponents = DateComponents(year: 2021, month: 12, day: 31, hour: 23, minute: 59, second: 59)
        return calendar.date(from:startComponents)!
        ...
        calendar.date(from:endComponents)!
    }()
    
    var body: some View{
        HStack {
            NavigationView {
                
                VStack{
                    
                    
                    
                    RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Corner Radius@*/10.0/*@END_MENU_TOKEN@*/)
                        .foregroundColor(.init(red: 0.2, green: 0.2, blue: 0.2))
                        .brightness(0.5)
                        .frame(width: UIScreen.main.bounds.width - 32, height: 150)
                    
                    
                    
                    
                    RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Corner Radius@*/10.0/*@END_MENU_TOKEN@*/)
                        .foregroundColor(.init(red: 0.2, green: 0.2, blue: 0.2))
                        .brightness(0.5)
                        .frame(width: UIScreen.main.bounds.width - 32, height: 150)
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
                    } //zstack
                }//vstack
                .navigationTitle("Feelings Calendar")
            }
        } //navigationview
    }//view
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
} //contentview
