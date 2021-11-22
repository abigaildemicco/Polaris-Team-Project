//
//  ReasonsView.swift
//  Polaris
//
//  Created by Abigail De Micco on 19/11/21.
//

import SwiftUI

struct ReasonsView: View {
    let lastWeekSurveys: [DailySurvey]
    @State var ReasonsValue :  Dictionary<String, Double> = [
        "Family": 0,
        "University": 0,
        "Friends": 0,
        "Diet":0,
        "Travel":0,
        "Weather":0,
        "Work":0,     
        "Love":0,
        "Sport":0,
        "Stress":0,
        "House":0,
        "Health": 0,
    ]
    var body: some View {
        
            VStack (spacing: 10.0){
                Text ("Reasons").bold()
                ForEach(Reasons) { Reason in
                  HStack {
                    Text (Reason.name)
                    ProgressView(value: ReasonsValue[Reason.name]!)
                      .frame(width: 220.0)
                  }
                }
            }   .padding()
                .background(Color.gray.brightness(0.38))
                .clipShape(RoundedRectangle(cornerRadius: 25.0, style: .continuous))
                .padding()
                .onAppear {
                  guard lastWeekSurveys.count > 0 else { return }
                  let total = lastWeekSurveys.count
                  for survey in lastWeekSurveys {
                    ReasonsValue[survey.reason!] = ReasonsValue[survey.reason!]! + 1.0/Double(total)
                    print("\(survey.reason!): \(ReasonsValue[survey.reason!]!)")
                  }
                }
    }
}

struct ReasonsView_Previews: PreviewProvider {
    static var previews: some View {
        ReasonsView(lastWeekSurveys: [])
    }
}

