//
//  Reasons.swift
//  Polaris
//
//  Created by Antonio Iacono on 16/11/21.
//


import Foundation
import SwiftUI

struct Reason : Identifiable{
    
    var name : String
   
    var id : String { name }
    
}


var Reasons : [Reason] = [
    
    Reason (name: "University"),
    Reason (name: "Diet"),
    Reason (name: "Family"),
    Reason (name: "Travel"),
    Reason (name: "Weather"),
    Reason (name: "Work"),
    Reason (name: "Friends"),
    Reason (name: "Love"),
    Reason (name: "Sport"),
    Reason (name: "Stress"),
    Reason (name: "House"),
    Reason (name: "Health"),

]
