//
//  DataValue.swift
//  Polaris
//
//  Created by Antonio Iacono on 19/11/21.
//Create the data value


import SwiftUI

struct DateValue : Identifiable {
    var id = UUID() .uuidString
    var day: Int
    var date: Date
}
