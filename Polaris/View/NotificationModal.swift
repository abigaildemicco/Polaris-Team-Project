//
//  NotificationModalView.swift
//  Polaris app
//
//  Created by Keyhan Mortezaeifar on 17/11/21.
//  This is the Notification manager modal after clicking on "Set Notification" on TrackerView

import SwiftUI


struct DaysWanted {
  var name: String
  var isChecked: Bool = false
}

@available(iOS 15, *)
struct NotificationModalView: View {
//    @Environment(\.dismiss) var dismiss
//    @Binding var showingNotificationModal: Bool
    
    @State private var dayPreferred = Date.now
    
    @State var daysWanted = [
        DaysWanted(name: "Monday", isChecked: true),
        DaysWanted(name: "Tuesday", isChecked: true),
        DaysWanted(name: "Wednesday", isChecked: true),
        DaysWanted(name: "Thursday", isChecked: true),
        DaysWanted(name: "Friday", isChecked: true),
        DaysWanted(name: "Saturday", isChecked: true),
        DaysWanted(name: "Sunday", isChecked: true),
        DaysWanted(name: "More Day")
    ]
    
    var body: some View {
        VStack {
            
            DatePicker(" Choose the moment of your\n day you want to be reminded\n to make your input", selection: $dayPreferred, displayedComponents: .hourAndMinute)
                .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            List {
                Text("Monday0")
                Text("Tuesday0")
                Text("Wednesday0")
                Text("Thursday0")
                Text("Friday0")
                Text("Saturday0")
                Text("Sunday0")
            }
            
//            ForEach(daysWanted, id: \.self) { daysWanted in
//              HStack {
//                Text(daysWanted.name)
//                Spacer()
//                if daysWanted.isChecked {
//                  Text("✅")
//                } else {
//                  Text("🔲") }
//                }
//            }
            
            
            
            
//            Button("Done") {
//                dismiss()
//            }
//            .font(.title)
//            .padding()
//            .background(Color.black)
            
        }
    }
}

//struct NotificationModalView_Previews: PreviewProvider {
//    static var previews: some View {
//        NotificationModalView()
//    }
//}
