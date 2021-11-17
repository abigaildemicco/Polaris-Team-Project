//
//  GridView.swift
//  Polaris
//
//  Created by Antonio Iacono on 17/11/21.
//

import Foundation
import SwiftUI

struct ReasonsView : View {
    
    var items: [GridItem] {
        Array(repeating: .init(.fixed(20)), count: 2)
    }

    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
        ForEach(Reasons) { Reason in
          LazyVGrid(columns: items, spacing: 10) {
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
          .padding(.horizontal)
        }
      }
    }
    
    
}
