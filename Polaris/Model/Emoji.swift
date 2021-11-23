//
//  EmojiBotton.swift
//  Polaris
//
//  Created by Antonio Iacono on 16/11/21.
//

import Foundation
import SwiftUI

 struct Emoji : Identifiable  {
    
    var name : String
    var description: String
    var emojiSize : Double
    var buttonColour : Color
    var emojiSelected : Bool
    var id = UUID()

}

/*
class emojyManager : ObservableObject { @Published var emojis: [Emoji] = [
    Emoji (name: "😢",description: "very bad",emojiSize: 50.0,buttonColour: .blue,emojiSelected: false),
    Emoji (name: "🙁",description: "bad",emojiSize: 50.0,buttonColour: .blue,emojiSelected: false),
    Emoji (name: "😐",description: "none",emojiSize: 50.0,buttonColour: .blue,emojiSelected: false),
    Emoji (name: "☺️",description: "good",emojiSize: 50.0,buttonColour: .blue,emojiSelected: false),
    Emoji (name: "😁",description:"very good",emojiSize: 50.0,buttonColour: .blue,emojiSelected: false),
]}

*/
 var Emojis : [Emoji] = [
    Emoji (name: "😢",description: "very bad",emojiSize: 50.0,buttonColour: .blue,emojiSelected: false),
    Emoji (name: "🙁",description: "bad",emojiSize: 50.0,buttonColour: .blue,emojiSelected: false),
    Emoji (name: "😐",description: "none",emojiSize: 50.0,buttonColour: .blue,emojiSelected: false),
    Emoji (name: "☺️",description: "good",emojiSize: 50.0,buttonColour: .blue,emojiSelected: false),
    Emoji (name: "😁",description:"very good",emojiSize: 50.0,buttonColour: .blue,emojiSelected: false),

]

 
 

/*
var emoji1 = Emoji (name: "😢",description: "very bad",emojiSize: 50.0,buttonColour: .blue,emojiSelected: false)
var emoji2 = Emoji(name: "🙁",description: "bad",emojiSize: 50.0,buttonColour: .blue,emojiSelected: false)
var emoji3 = Emoji(name: "😐",description: "none",emojiSize: 50.0,buttonColour: .blue,emojiSelected: false)
var emoji4 = Emoji(name: "☺️",description: "good",emojiSize: 50.0,buttonColour: .blue,emojiSelected: false)
var emoji5 = Emoji(name: "😁",description:"very good",emojiSize: 50.0,buttonColour: .blue,emojiSelected: false)

var Emojis = [emoji1,emoji2,emoji3,emoji4,emoji5]
*/
