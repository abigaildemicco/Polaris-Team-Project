//
//  ModalView.swift
//  Polaris
//
//  Created by Antonio Iacono on 19/11/21.
//


import SwiftUI

struct ModalView: View {
    @Binding var showModal: Bool
   
    
    var body: some View {
        NavigationView {
            Group{
                VStack{
                    
               Text("MGCPB")
               .frame(width: 150)
                .padding(5)
                .navigationBarItems(trailing: Button("Done", action: {
                    showModal.toggle()
                })).foregroundColor(.none)
                }
            }
        }
    }
    
}

struct ModalView_Previews: PreviewProvider {
    static var previews: some View {
        ModalView(showModal: .constant(true))
    }
}
