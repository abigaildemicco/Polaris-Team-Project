//
//  EmojiSelectionView.swift
//  Polaris
//
//  Created by Antonio Iacono on 18/11/21.
//

import SwiftUI

struct EmojiSelectionView: View {
    var body: some View {
        ZStack{
            
            RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Corner Radius@*/10.0/*@END_MENU_TOKEN@*/)
                .foregroundColor(.init(red: 0.2, green: 0.2, blue: 0.2))
                .brightness(0.65)
                .frame(width: UIScreen.main.bounds.width - 32, height: 150)
            
            VStack{
                Text("How do you feel?").font(.system(size: 24, weight: .heavy, design: .rounded))
                    
                
                
                HStack{
                    ForEach(Emojis){ Emoji in
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                            Text(Emoji.name).font(.system(size: Emoji.emojiSize))
                        }
                    }
                }
            }
        }
    }
}

struct EmojiSelectionView_Previews: PreviewProvider {
    static var previews: some View {
        EmojiSelectionView()
    }
}
