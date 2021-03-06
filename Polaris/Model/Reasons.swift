//
//  Reasons2.swift
//  Polaris
//
//  Created by Antonio Iacono on 17/11/21.
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
 
 
 
 
 /*


var Reasons: [String] = [
    "University",
    "Diet",
    "Family",
    "Travel",
    "Weather",
    "Work",
    "Friends",
    "Love",
    "Sport",
    "Stress",
    "House",
    "Health",]
*/
