//
//  RecordView.swift
//  Polaris
//
//  Created by Antonio Iacono on 22/11/21.
//

//ContentView.swift

//Created by BLCKBIRDS on 28.10.19.
//Visit www.BLCKBIRDS.com for more.

import SwiftUI

struct RecordView: View {
    
    @ObservedObject var audioRecorder: AudioRecorder
    
    var body: some View {
        NavigationView {
            VStack {
                RecordingsList(audioRecorder: audioRecorder)
                if audioRecorder.recording == false {
                    Button(action: {print(self.audioRecorder.startRecording())}) {
                        Image(systemName: "circle.fill")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 100, height: 100)
                            .clipped()
                            .foregroundColor(.red)
                            .padding(.bottom, 40)
                    }
                } else {
                    Button(action: {self.audioRecorder.stopRecording()}) {
                        Image(systemName: "stop.fill")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 100, height: 100)
                            .clipped()
                            .foregroundColor(.red)
                            .padding(.bottom, 40)
                    }
                }
            }
                .navigationBarTitle("Voice recorder")
                .navigationBarItems(trailing: EditButton())
                
        }
        
    }
}

struct RecordView_Previews: PreviewProvider {
    static var previews: some View {
        RecordView(audioRecorder: AudioRecorder())
    }
}
