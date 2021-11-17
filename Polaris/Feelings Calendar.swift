//
//  ContentView.swift
//  Polaris
//
//  Created by Abigail De Micco on 15/11/21.
//

import SwiftUI

struct ContentView: View {
    
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
            
            VStack{ //metto in fila i tre rettangoli
                ZStack{
                    RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Corner Radius@*/10.0/*@END_MENU_TOKEN@*/)
                        .foregroundColor(.init(red: 0.2, green: 0.2, blue: 0.2))
                        .brightness(0.5)
                        .frame(width: UIScreen.main.bounds.width - 32, height: 150)
                    
                    HStack (spacing: 10.0){
                        
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                            Text("😢").font(.system(size: emojiSize))
                        }
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                            Text("🙁").font(.system(size: emojiSize))
                        }
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                            Text("😐").font(.system(size: emojiSize))
                        }
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                            Text("☺️").font(.system(size: emojiSize))
                        }
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                            Text("😁").font(.system(size: emojiSize))
                        }
                        
                    } //hstack per le emoji
                } //zstack primo rettangolo
                
                ZStack {
                    RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Corner Radius@*/10.0/*@END_MENU_TOKEN@*/)
                        .foregroundColor(.init(red: 0.2, green: 0.2, blue: 0.2))
                        .brightness(0.5)
                        .frame(width: UIScreen.main.bounds.width - 32, height: 150)
                    VStack{
                        Text ("Family")
                    }
                    VStack {
                        Text ("University")
                    }
                    VStack {
                        Text ("Friends")
                    }
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
        }
    } //view
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
} //contentview
