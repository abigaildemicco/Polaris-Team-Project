//
//  ReasonGridView.swift
//  Polaris
//
//  Created by Antonio Iacono on 17/11/21.
//

import Foundation


import SwiftUI



struct ReasonGridView: View {
    
    private var items: [GridItem] = [
        GridItem(.fixed(100), spacing: 16),
        GridItem(.fixed(100), spacing: 16),
        GridItem(.fixed(100), spacing: 16)
    ]
    
    
    var  body: some View {
        ScrollView{
            
            LazyVGrid(columns: items){
                ForEach(Reasons) { Reason in
                    
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                        Text(Reason.name).font(.system(size: 20.0))
                            .padding(.all)
                            .foregroundColor(.white)
                            .background(Color.blue)
                            .cornerRadius(20)
                            .frame(width: 150, height: 50 ,alignment: .center )
                            .scaledToFit()
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
}
