////
////  ContentView.swift
////  Favorite recordings
////
////  Created by Domenico Marino on 15/11/21.
////
//
//import SwiftUI
//
//struct FavRec: View {
//    @State var searchText = ""
//    @State var searching = false
//    
//    let myRecordings = [
//        "Dio", "Maronn", "Ciao"
//    ]
//    
//
//    var body: some View {
//        NavigationView {
//            VStack(alignment: .leading) {
//             SearchBar(searchText: $searchText, searching: $searching)
//                List {
//                    ForEach(myRecordings.filter({ (record1: String) -> Bool in
//                        return record1.hasPrefix(searchText) || searchText == ""
//                    }), id: \.self) { record1 in
//                        Text(record1)
//                    }
//                }
//                    .listStyle(GroupedListStyle())
//                    .navigationTitle(searching ? "Searching" : "My Feelings")
//                    .toolbar {
//                        if searching {
//                            Button("Cancel") {
//                                searchText = ""
//                                withAnimation {
//                                   searching = false
//                                   UIApplication.shared.dismissKeyboard()
//                                }
//                            }
//                        }
//                    }
//                    .gesture(DragGesture()
//                                .onChanged({ _ in
//                        UIApplication.shared.dismissKeyboard()
//                                })
//                    )
//            }
//        }
//    }
//}
//
//struct FavRec_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
//struct SearchBar: View {
//    
//    @Binding var searchText: String
//    @Binding var searching: Bool
//    
//    var body: some View {
//        ZStack {
//            Rectangle()
//                .foregroundColor(.init(red: 0.2, green: 0.2, blue: 0.2))
//                .brightness(0.7)
//            HStack {
//                Image(systemName: "magnifyingglass")
//                TextField("Search ..", text: $searchText) { startedEditing in
//                    if startedEditing {
//                        withAnimation {
//                            searching = true
//                        }
//                    }
//                } onCommit: {
//                    withAnimation {
//                        searching = false
//                    }
//                }
//            }
//            .foregroundColor(Color.black)
//            .padding(.leading, 13)
//        }
//            .frame(height: 40)
//            .cornerRadius(13)
//            .padding()
//    }
//
//}
//
//extension UIApplication {
//     func dismissKeyboard() {
//         sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
//     }
//}
