//
//  Task.swift
//  Polaris
//
//  Created by Antonio Iacono on 19/11/21.
//
// This was to add small circles on the bottom of specific days (now is useless)

import SwiftUI

struct Task: Identifiable{
    var id = UUID().uuidString
    var title: String
    var time: Date = Date()
    
}
struct TaskMetaData: Identifiable{
    var id = UUID().uuidString
    var task: [Task]
    var taskDate: Date
}
func getSampleDate (offset:Int)->Date{
    let calendar = Calendar.current
    let date = calendar.date(byAdding: .day, value: offset, to: Date())
    return date ?? Date()
}
var tasks: [TaskMetaData] = [

    TaskMetaData(task: [
   

        Task(title: "hi")
         ], taskDate: getSampleDate(offset: 1))
    ]
  
