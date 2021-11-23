//
//  ReasonsView.swift
//  Polaris
//
//  Created by Abigail De Micco on 19/11/21.
//

import SwiftUI

struct ReasonsView: View {
    let lastWeekSurveys: [DailySurvey]
    @State var StatsReasons : Array<String> = Array(repeating: "" , count: 3)
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
                if StatsReasons.contains(Reason.name) {
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
//                .frame(width: 50, height: 50, alignment: .center)
            }
      
        .onAppear {
          guard lastWeekSurveys.count > 0 else { return }
          let total = lastWeekSurveys.count
          for survey in lastWeekSurveys {
            ReasonsValue[survey.reason!] = ReasonsValue[survey.reason!]! + 1.0/Double(total)
            print("\(survey.reason!): \(ReasonsValue[survey.reason!]!)")
        }
        var valuesArray = Array(repeating: 0.0, count: ReasonsValue.count)
        var i=0
        for reasonValue in ReasonsValue{
            valuesArray[i] = reasonValue.value
            i+=1
        }
        valuesArray = valuesArray.sorted().reversed()
        for n in 0 ... 2 {
            StatsReasons[n] = ReasonsValue.keys.first { key in
                ReasonsValue[key] == valuesArray[n] && !StatsReasons.contains(key)
            }!
        }
        }
    }
}

struct ReasonsView_Previews: PreviewProvider {
    static var previews: some View {
        ReasonsView(lastWeekSurveys: [], StatsReasons: [])
    }
}

