//
//  EmojiSelectionView.swift
//  Polaris
//
//  Created by Antonio Iacono on 18/11/21.
//

import SwiftUI

struct EmojiSelectionView: View {
    var body: some View {
        
        
        VStack{
            Text("How do you feel?").font(.system(size: 24, weight: .heavy, design: .rounded))
            
            
            
            HStack{
                ForEach(Emojis){ Emoji in
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                        Text(Emoji.name).font(.system(size: Emoji.emojiSize))
                    }
                }
            }
        } .frame(width: UIScreen.main.bounds.width - 32,height: 150)
            .background(Color.gray)
            .clipShape(RoundedRectangle(cornerRadius: 25.0, style: .continuous))
            .padding()
        
    }
}

struct EmojiSelectionView_Previews: PreviewProvider {
    static var previews: some View {
        EmojiSelectionView()
    }
}
