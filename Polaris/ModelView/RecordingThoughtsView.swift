//
//  RecWritingThoughtsView.swift
//  Polaris
//
//  Created by Antonio Iacono on 22/11/21.
//



import SwiftUI

struct RecordingThoughtsView: View {
    
    @ObservedObject var audioRecorder: AudioRecorder

        
        var body: some View {
            
            VStack (spacing: 10.0){
                
                
                
                RecordView(audioRecorder: AudioRecorder())
                
            }
            
        }
    
}

struct RecWritingThoughtsView_Previews: PreviewProvider {
    static var previews: some View {
        RecordingThoughtsView(audioRecorder: AudioRecorder())
    }
}
