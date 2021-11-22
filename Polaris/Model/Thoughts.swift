//
//  Thoughts.swift
//  Polaris
//
//  Created by Antonio Iacono on 20/11/21.
//

import Foundation


struct Thought : Identifiable {
    
    var name : String
    var note : String
    
    
    var id : String { name }
    
    
}

var today = Thought (name: "Today",note: "Today I feel really good. I am coding with Swift !")
var yesterday = Thought (name: "Yesterday", note: "Yesterday I felt bad, I ate too much!")
