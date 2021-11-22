//
//  CreateThoughtView.swift
//  Polaris
//
//  Created by Antonio Iacono on 22/11/21.
//


import SwiftUI

struct CreateThoughtView: View {
    @Binding var CreateThought: Bool
   
    
    var body: some View {
        NavigationView {
            Group{
                VStack{
                    
                    RecWritingThoughtsView(audioRecorder: AudioRecorder())
                }
            }
        }
    }
    
}



struct CreateThoughtView_Previews: PreviewProvider {
    static var previews: some View {
        CreateThoughtView(CreateThought: .constant(true))
    }
}
