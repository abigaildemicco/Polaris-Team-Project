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
                ForEach(Emojis, id: \.id ) { emoji in
             //   ForEach(0..<Emojis) { emoji in
                    let index = Emojis.firstIndex(where: {$0.id == emoji.id})
                    Button(action: { Emojis[index!].emojiSelected.toggle()} ) {
                        Text(emoji.name).font(.system(size: emoji.emojiSize))
                    }
                }
            }
        } .frame(width: UIScreen.main.bounds.width - 32,height: 150)
            .background(Color.gray.brightness(0.38))
            .clipShape(RoundedRectangle(cornerRadius: 25.0, style: .continuous))
            .padding()
        Button(action: { print(Emojis[0].emojiSelected)} ) {
               Text("Prova")
           }
    }
    
   
    
}

struct EmojiSelectionView_Previews: PreviewProvider {
    static var previews: some View {
        EmojiSelectionView()
    }
}
