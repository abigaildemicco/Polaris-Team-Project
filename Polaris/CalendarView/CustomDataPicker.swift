//
//  CustomDataPicker.swift
//  Polaris
//
//  Created by Antonio Iacono on 19/11/21.
//

//
//  CustomDataPicker.swift
//  Polaris
//
//  Created by Antonio Iacono on 19/11/21.
// This is to manage the calendar and to scroll through all the months and years
// 
import SwiftUI

struct CustomDataPicker: View {
    @Binding var currentDate : Date
    @State var currentMonth: Int = 0
    @State private var showModal = false

    var body: some View {
//       NavigationView {
        VStack(spacing:35){
           

            let days: [String] =
            ["Sun", "Mon","Tue", "Wed","Thu","Fri", "Sat"]
            HStack(spacing:20){
                VStack(alignment: .leading, spacing: 10){
                    Text (extraData() [0])
                        .font(.caption)
                        .fontWeight(.bold)
                        .foregroundColor(.red)
                    Text (extraData() [1])
                        .font(.title.bold())
                        .foregroundColor(.red)
                    }
                Spacer(minLength: 0)

                Button{
                    withAnimation{
                        currentMonth -= 1
                    }
                }label: {
                    Image(systemName: "chevron.left")
                        .font(.title2)
                }

                Button{
                    withAnimation{
                        currentMonth -= -1
                    }
                }label: {
                    Image(systemName: "chevron.right")
                        .font(.title2)
                }

            }
            .padding(.horizontal)
            
            HStack(spacing:0){
                ForEach(days,id: \.self){ day in

                    Text(day)
                    .font(.callout)
                    .fontWeight(.semibold)
                    .frame(maxWidth: .infinity)

                }
            }
            
            let columns = Array (repeating: GridItem(.flexible()), count: 7)

            LazyVGrid(columns: columns, spacing: 15){

                ForEach(extractDate()){ value in
                    CardView(value: value)

                }
            }

        }
        .onChange(of: currentMonth) { newValue in
            currentDate = getCurrentMonth()

        }
//      }
//        .navigationTitle(Text("Calendar"))
        
        }

    @ViewBuilder
    func CardView(value: DateValue)->some View{
        VStack{
            if value.day != -1 {
                if let task = tasks.first(where: {
                    task in
                    return isSameDay(date1: task.taskDate, date2: value.date)
                }){
                    Button("\(value.day)") {
                       showModal.toggle()
                    }
                   .sheet(isPresented: $showModal, content: {
                       ModalView(showModal: $showModal)
                   })
                    
                   // Text("\(value.day)")
                     //   .font(.title3.bold())
                    Spacer()
                    Circle()
                        .fill(isSameDay(date1: task.taskDate, date2: currentDate) ? .white : .pink)
                        .frame(width: 8, height: 8)
                }
                else{
                    Button("\(value.day)") {
                       showModal.toggle()
                    }.foregroundColor(.black)
                   .sheet(isPresented: $showModal, content: {
                       TodayView(showModal: $showModal)
                   })
                    Spacer()
                }
            }
        }
        .padding(.vertical, 8)
        .frame( height: 60, alignment: .top)
    }
    func isSameDay(date1: Date, date2:Date)->Bool{
        let calendar = Calendar.current
        return calendar.isDate(date1, inSameDayAs: date2)
    }

    func extraData()->[String] {

        let formatter = DateFormatter()
        formatter.dateFormat = "YYYY MMMM"

        let date = formatter.string(from: currentDate)

        return date.components(separatedBy: " ")

    }


    func getCurrentMonth()->Date{

        let calendar = Calendar.current

        guard let currentMonth = calendar.date(byAdding: .month, value: self.currentMonth, to: Date())

        else{
            return Date()
            }

        return currentMonth
    }

    func extractDate () -> [DateValue]{

        let calendar = Calendar.current

        let currentMonth =  getCurrentMonth()

        var days = currentMonth.getAllDates().compactMap {
             date -> DateValue in

            let day = calendar.component(.day, from: date)

            return DateValue(day: day, date: date)
        }

        let firstWeekday = calendar.component(.weekday, from: days.first?.date ?? Date())

        for _ in 0..<firstWeekday - 1 {
            days.insert(DateValue(day: -1, date: Date()), at: 0)
            }

        return days
    }
}

struct CustomDataPicker_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
extension Date{

    func getAllDates()->[Date]{

        let calendar = Calendar.current

        let startDate = calendar.date (from: Calendar.current.dateComponents([.year,.month], from: self))!

        let range = calendar.range(of: .day, in: .month, for: self)!


    return range.compactMap { day -> Date in
        return calendar.date(byAdding: .day, value: day - 1, to: startDate)!
        }
    }
}
