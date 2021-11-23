//
//  ThoughtView.swift
//  Polaris
//
//  Created by Antonio Iacono on 20/11/21.
//


import SwiftUI

struct ThoughtView: View {

    @State private var CreateThought = false
    var thoughts = [today,yesterday]
    

    var body: some View {
        
        
        VStack{
            Text(" Save your feelings!").font(.system(size: 24, weight: .heavy, design: .rounded)) .padding(.top,20)
                
            List {
                Button("Add Thought") {
             
                    CreateThought.toggle()
                }  .sheet(isPresented: $CreateThought, content: {
                    CreateThoughtView(CreateThought: $CreateThought)})
                          
                       
                
                ForEach(thoughts) { Thought in
                    if #available(iOS 15.0, *) {
                        Text(Thought.name)
                            .swipeActions(allowsFullSwipe: false) {
                                
                                
                                Button(role: .destructive) {
                                    print("Deleting Thought")
                                } label: {
                                    Label("Delete", systemImage: "trash.fill")
                                }
                               
                                
                                Button {
                                    print("Read thought")
                                } label: {
                                    Label("read", systemImage: "paperplane")
                                }.tint(.blue)
                                
                                
                                Button {
                                    print("Favourite thought")
                                } label: {
                                    Label("Favourite", systemImage: "heart.square.fill")
                                }.tint(.green)
                                
                                
                               
                            }
                    } else {
                        
                        // Fallback on earlier versions
               
                    }
                                        
                }
            }
        }   .frame(width: UIScreen.main.bounds.width - 32,height: 260)
            .background(Color.gray.brightness(0.38))
            .clipShape(RoundedRectangle(cornerRadius: 25.0, style: .continuous))
           // .padding()
        }
        
    
}


struct ThoughtView_Previews: PreviewProvider {
    static var previews: some View {
        ThoughtView()
    }
}




