////
////  NotificationModalView.swift
////  Polaris app
////
////  Created by Keyhan Mortezaeifar on 17/11/21.
////  This is the Notification manager modal after clicking on "Set Notification" on TrackerView
//
//import UserNotifications
//import SwiftUI
//
//struct DaysWanted {
//    var name: String
//    var isChecked: Bool = false
//}
//
//@available(iOS 15, *)
//
//struct NotificationModalView: View {
//
//    @Environment(\.dismiss) var dismiss
//
//    //    @Binding var showingNotificationModal: Bool
//
//    @State private var dayPreferred = Date.now
//
//    @State var daysWanted = [
//        DaysWanted(name: "Monday", isChecked: true),
//        DaysWanted(name: "Tuesday", isChecked: true),
//        DaysWanted(name: "Wednesday", isChecked: true),
//        DaysWanted(name: "Thursday", isChecked: true),
//        DaysWanted(name: "Friday", isChecked: true),
//        DaysWanted(name: "Saturday", isChecked: true),
//        DaysWanted(name: "Sunday", isChecked: true),
//        DaysWanted(name: "More Day")
//    ]
//
//    var body: some View {
//        NavigationView {
//            VStack {
//                // Showing the date picker for the user to choose a time of the day
//                DatePicker(" Choose the moment of your\n day you want to be reminded\n to make your input", selection: $dayPreferred, displayedComponents: .hourAndMinute)
//                    .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
//
//                List {
//                    Text("Monday0")
//                    Text("Tuesday0")
//                    Text("Wednesday0")
//                    Text("Thursday0")
//                    Text("Friday0")
//                    Text("Saturday0")
//                    Text("Sunday0")
//                }
//
//                // Creating a selectable list of days with checkmarks
//                //            ForEach(daysWanted, id: \.self) { daysWanted in
//                //              HStack {
//                //                Text(daysWanted.name)
//                //                Spacer()
//                //                if daysWanted.isChecked {
//                //                  Text("✅")
//                //                } else {
//                //                  Text("🔲") }
//                //                }
//                //            }
//
//
//                //            Button("Done") {
//                //                dismiss()
//                //            }
//                //            .font(.title)
//                //            .padding()
//                //            .background(Color.black)
//
//            }
//
//
//            // This button should be moved to the to right of the Modal integrated with the "Done" button
//            //        VStack {
//            //            Button("Schedule Notification") {
//            //                UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .badge, .sound]) { success, error in
//            //                    if success {
//            //                        print("All set!")
//            //                        let content = UNMutableNotificationContent()
//            //                        content.title = "Polaris app "
//            //    //                    content.subtitle = "How do you feel ? 🌟"
//            //                        content.body = "Time a minute to reflect about how you feel right now 🌟"
//            //                        content.sound = UNNotificationSound.default
//            //
//            //                        // show this notification on the lock screen a few seconds from now so CMD + L quick to lock the screen
//            //                        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 3, repeats: false)
//            //
//            //                        // choose a random identifier
//            //                        let request = UNNotificationRequest(identifier: UUID().uuidString, content: content, trigger: trigger)
//            //
//            //                        // add our notification request to ask to the user his consent
//            //                        UNUserNotificationCenter.current().add(request)
//            //
//            //                    } else if let error = error {
//            //                        print(error.localizedDescription)
//            //                    }
//            //                }
//            //                // second
//            //            }
//            //
//            //        }
//
//            LargeButton(title: "Schedule your notification",
//                        backgroundColor: Color.white,
//                        foregroundColor: Color.blue) {
//                //                                        print("Hello World")
//                dismiss()
//                UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .badge, .sound]) { success, error in
//                    if success {
//                        print("All set!")
//                        let content = UNMutableNotificationContent()
//                        content.title = "Polaris app "
//                        //                    content.subtitle = "How do you feel ? 🌟"
//                        content.body = "Time a minute to reflect about how you feel right now 🌟"
//                        content.sound = UNNotificationSound.default
//
//                        // show this notification five seconds from now
//                        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 3, repeats: false)
//
//                        // choose a random identifier
//                        let request = UNNotificationRequest(identifier: UUID().uuidString, content: content, trigger: trigger)
//
//                        // add our notification request
//                        UNUserNotificationCenter.current().add(request)
//
//                    } else if let error = error {
//                        print(error.localizedDescription)
//                    }
//                }
//                // second
//            }
//        }
//        .navigationBarTitle("Notification")
//        //            COME OOOOOOON I just want to put a button to close the modal
//        //            .navigationBarItems(trailing: Button {
//        //                Text("Cancel")
//        //            }
//        //            )
//
//    }
//}
//
////struct NotificationModalView_Previews: PreviewProvider {
////    static var previews: some View {
////        NotificationModalView()
////    }
////}
