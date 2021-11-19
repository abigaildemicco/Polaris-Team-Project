//
//  MoodView.swift
//  Polaris
//
//  Created by Abigail De Micco on 19/11/21.
//

import SwiftUI

struct MoodView: View {
    var body: some View {
        ZStack{
            VStack {
                Text ("Mood").bold()
                HStack (spacing: 5.0){
                    ForEach(Emojis){ Emoji in
                        
                        Text(Emoji.name).font(.system(size: Emoji.emojiSize))
                    }
                }
            }  .padding()
                .background(Color.gray)
                .clipShape(RoundedRectangle(cornerRadius: 25.0, style: .continuous))
                .padding()
        }
    }
}

struct MoodView_Previews: PreviewProvider {
    static var previews: some View {
        MoodView()
    }
}
