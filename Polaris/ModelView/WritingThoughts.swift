//
//  WritingThoughts.swift
//  Polaris
//
//  Created by Antonio Iacono on 22/11/21.
//
/*
import SwiftUI

struct WritingThoughts: View {
    @Binding var CreateThought: Bool
    var body: some View {
        @ObservedObject var audioRecorder: AudioRecorder
        
        var body: some View {
            List {
                ForEach(thoughts) { Thought in
                    WritingRow(audioURL: recording.fileURL)
                }
                    .onDelete(perform: delete)
            }
        }
        
        func delete(at offsets: IndexSet) {
            
            var urlsToDelete = [URL]()
            for index in offsets {
                urlsToDelete.append(audioRecorder.recordings[index].fileURL)
            }
            audioRecorder.deleteRecording(urlsToDelete: urlsToDelete)
        }
    }
}

struct WritingThoughts_Previews: PreviewProvider {
    static var previews: some View {
        WritingThoughts()
    }
}


struct WritingRow: View {
    @Binding var ShowNote: Bool
    var writes : Thought
    
    @ObservedObject var audioPlayer = AudioPlayer()
    
    var body: some View {
        HStack {
            Text(writes.name)
            
            Button("paperplane") {
               showNote.toggle()
            }.foregroundColor(.black)
           .sheet(isPresented: $showNote, content: {
               TodayView(showNote: $showNote)
           })
            
            Spacer()
        
        }
    }
}
 
*/
