//
//  Thoughts.swift
//  Polaris
//
//  Created by Antonio Iacono on 20/11/21.
//

import Foundation
import OpenGLES


struct Thought : Identifiable {
    
    var name : String
    var note : String
    var rec : Bool
   // let fileURL: URL
   // let createdAt: Date
    //var Rec : Recording
       
    var id : String { name }
    
    
}

var today = Thought (name: "Thought about the exam",note: "Today I feel really good. I am coding with Swift !",rec: false)
var yesterday = Thought (name: "Some reflection", note: "Yesterday I felt bad, I ate too much!",rec: false)
