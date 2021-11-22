//
//  CreateThoughtView.swift
//  Polaris
//
//  Created by Antonio Iacono on 22/11/21.
//


import SwiftUI

struct CreateThoughtView :  View {
    
    
    @Binding var CreateThought: Bool
    
    
    
    var body: some View {
        
        TabView {
            ForEach(0..<2) { i in
                ZStack {
                    Color.black

                    if(i==0){
                        
                        RecordingThoughtsView(audioRecorder: AudioRecorder()).colorInvert()
                    }
                    else{
                        
                    }
                    
                }.clipShape(RoundedRectangle(cornerRadius: 10.0, style: .continuous))
            }
            .padding(.all, 10)
        }.colorInvert()
        .frame(width: UIScreen.main.bounds.width)
        .tabViewStyle(PageTabViewStyle())
        
        
        
    }
    
}





struct CreateThoughtView_Previews: PreviewProvider {
    static var previews: some View {
        CreateThoughtView(CreateThought: .constant(true))
    }
}
