//
//  EmojiSelectionView.swift
//  Polaris
//
//  Created by Antonio Iacono on 18/11/21.
//

import SwiftUI

struct EmojiSelectionView: View {
    
    @State private var isScaled: Bool = false
    
    var body: some View {
        
        
        VStack{
            Text("How do you feel?").font(.system(size: 24, weight: .heavy, design: .rounded))
                .padding(2)
            
            
            
            HStack{
                ForEach(Emojis) { emoji in
                    
//                    let index = Emojis.firstIndex(where: {$0.id == emoji.id})
                    /*
                     Button(action: { Emojis[index!].emojiSelected.toggle()} ) {
                     Text(emoji.name).font(.system(size: emoji.emojiSize))
                     .animation( .perform{startAnimation(Emojis[index!].emojiSelected)})
                     }
                     
                     */
                    
                    EmojiButton(action: {
                        print("Some")
                    }, content:
                        Text(emoji.name).font(.system(size: emoji.emojiSize))
                    )
                    
                    
//                    Button{
//                        isScaled.toggle()
//
//                    } label:{
//                        Text(emoji.name).font(.system(size: emoji.emojiSize))
//                            .scaleEffect(isScaled ? 2 : 1)
//
//
//                    } //.scaleEffect(emoji.scale)

                    
                }
            } .frame(width: UIScreen.main.bounds.width - 32,height: 150)
                .background(Color.gray.brightness(0.38))
                .clipShape(RoundedRectangle(cornerRadius: 25.0, style: .continuous))
                .padding()
            
        }
        
    }
    
}


struct EmojiButton<Content: View>: View {
    
    var action: () -> Void
    var content: Content
    
    @State var isScaled: Bool = false
    
    var body: some View{
        
        Button {
            isScaled.toggle()
            action()
        } label: {
            content
                .scaleEffect(isScaled ? 1.5 : 1)
        }

    }
    
}


struct EmojiSelectionView_Previews: PreviewProvider {
    static var previews: some View {
        EmojiSelectionView()
    }
}
