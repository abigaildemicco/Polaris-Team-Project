//
//  MoodView.swift
//  Polaris
//
//  Created by Abigail De Micco on 19/11/21.
//

import SwiftUI

struct MoodView: View {
    let lastWeekSurveys: [DailySurvey]
    @State var moodsPercentage = [
        "very bad": 0,
        "bad": 0,
        "none": 0,
        "good": 0,
        "very good": 0
    ]
    
    var body: some View {
        ZStack{
            VStack {
                Text ("Mood").bold()
                HStack (spacing: 5.0){
                    ForEach(Emojis){ Emoji in
                        VStack {
                            Text(Emoji.name).font(.system(size: Emoji.emojiSize))
                            Text(String(moodsPercentage[Emoji.description]!) + "%")
                        }
                    }
                }
            }  .padding()
                .background(Color.gray.brightness(0.38))
                .clipShape(RoundedRectangle(cornerRadius: 25.0, style: .continuous))
                .padding()
                .onAppear {
                    guard lastWeekSurveys.count > 0 else { return }
                    let total = lastWeekSurveys.count
                    var moodsPercents = [
                        "very bad": 0.0,
                        "bad": 0.0,
                        "none": 0.0,
                        "good": 0.0,
                        "very good": 0.0
                    ]
                    for survey in lastWeekSurveys {
                        moodsPercents[survey.mood!] = moodsPercents[survey.mood!]! + 100.0/Double(total)
                        print("\(survey.mood!): \(moodsPercents[survey.mood!]!)")
                    }
                    for emoji in Emojis {
                        moodsPercentage[emoji.description]! = Int(moodsPercents[emoji.description]!)
                    }
                }
        }
    }
}

struct MoodView_Previews: PreviewProvider {
    static var previews: some View {
        MoodView(lastWeekSurveys: [])
    }
}
