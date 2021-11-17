//
//  EmojiBotton.swift
//  Polaris
//
//  Created by Antonio Iacono on 16/11/21.
//

import Foundation
import SwiftUI

struct Emoji : Identifiable{
    
    var name : String
    var emojiSize : Double
    var buttonColour : Color
    var id : String { name }

}


var Emojis : [Emoji] = [
    Emoji (name: "😥",emojiSize: 50.0,buttonColour: .blue),
    Emoji (name: "🙁",emojiSize: 50.0,buttonColour: .blue),
    Emoji (name: "😐",emojiSize: 50.0,buttonColour: .blue),
    Emoji (name: "☺️",emojiSize: 50.0,buttonColour: .blue),
    Emoji (name: "😄",emojiSize: 50.0,buttonColour: .blue),

]

/*

var emoji1 = Emoji (emoji: "😢",emojiSize: 50.0,buttonColour: .blue)
var emoji2 = Emoji (emoji: "🙁",emojiSize: 50.0,buttonColour: .blue)
var emoji3 = Emoji (emoji: "😐",emojiSize: 50.0,buttonColour: .blue)
var emoji4 = Emoji (emoji: "☺️",emojiSize: 50.0,buttonColour: .blue)
var emoji5 = Emoji (emoji: "😁",emojiSize: 50.0,buttonColour: .blue)

*/
