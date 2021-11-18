//
//  ContentView.swift
//  Favorite recordings
//
//  Created by Domenico Marino on 15/11/21.
//

import SwiftUI


struct FavoritesView: View {
    @State var searchText = ""
    @State var searching = false
    
   
    
    @State var myRecordings = [
        "Maronn", "Dio", "Ciao", "Gesù", "Gesuel", "Paskd"
    ]
    

    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
             SearchBar(searchText: $searchText, searching: $searching)
                List {
                    
                    ForEach(myRecordings.filter({ (record1: String) -> Bool in
                        return record1.hasPrefix(searchText) || searchText == ""
                    }), id: \.self) { record1 in
                        Text(record1)
                    }
                    
                    .onDelete(perform: {IndexSet in
                        
                    myRecordings.remove(atOffsets: IndexSet)
                    })
                    .onMove(perform: { indices, newOffset in myRecordings.move(fromOffsets: indices, toOffset: newOffset)
                   
                    })
                  
                }
//                .padding()
               
                .navigationBarItems(leading: EditButton()
                .foregroundColor(.orange))
               
                
                

               .listStyle(GroupedListStyle())
              .navigationTitle(searching ? "Searching" : "My Feelings")
             .toolbar {
//                ToolbarItem(placement: .navigationBarTrailing){ Image(systemName: "plus")
//              .foregroundColor(.red)
                  
//                        ToolbarItemGroup(placement: .navigationBarTrailing){
//                            EditButton()
                        if searching {
                            Button("Cancel") {
                                searchText = ""
                                withAnimation {
                                   searching = false
                                   UIApplication.shared.dismissKeyboard()
                                }
                            }.foregroundColor(.orange)
                            
                        }
                    }
                    
                    .gesture(DragGesture()
                                .onChanged({ _ in
                        UIApplication.shared.dismissKeyboard()
                                })
                    )
            }
        }
       
    }
}

struct FavoritesView_Previews: PreviewProvider {
    static var previews: some View {
        FavoritesView()
    }
}

struct SearchBar: View {
    
    @Binding var searchText: String
    @Binding var searching: Bool
    
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(.init(red: 0.2, green: 0.2, blue: 0.2))
                .brightness(0.7)
            HStack {
                Image(systemName: "magnifyingglass")
                TextField("Search ..", text: $searchText) { startedEditing in
                    if startedEditing {
                        withAnimation {
                            searching = true
                        }
                    }
                } onCommit: {
                    withAnimation {
                        searching = false
                    }
                }
            }
            .foregroundColor(Color.black)
            .padding(.leading, 13)
        }
            .frame(height: 40)
            .cornerRadius(13)
            .padding()
    }
  
    }


    extension UIApplication {
    func dismissKeyboard() {
    sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
     }
}

