//
//  ReasonsView.swift
//  Polaris
//
//  Created by Abigail De Micco on 19/11/21.
//

import SwiftUI

struct ReasonsView: View {
    var body: some View {
        ZStack {
            VStack (spacing: 10.0){
                Text ("Reasons").bold()
                HStack {
                    Text ("Family")
                    ProgressView(value: 0.7)
                        .frame(width: 220.0)
                }
                HStack {
                    Text ("University")
                    ProgressView(value: /*@START_MENU_TOKEN@*/0.5/*@END_MENU_TOKEN@*/)
                        .frame(width: 220.0)
                }
                HStack{
                    Text ("Friends")
                    ProgressView(value: /*@START_MENU_TOKEN@*/0.5/*@END_MENU_TOKEN@*/)
                        .frame(width: 220.0)
                }
            }  .padding()
                .background(Color.gray)
                .clipShape(RoundedRectangle(cornerRadius: 25.0, style: .continuous))
                .padding()
        }
    }
}

struct ReasonsView_Previews: PreviewProvider {
    static var previews: some View {
        ReasonsView()
    }
}
