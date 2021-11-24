//
//  ContentView.swift
//  Polaris app
//
//  Created by Keyhan Mortezaeifar on 15/11/21.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        
        ZStack {
            TabView {
                TodayView(showModal: .constant(true))
                    .tabItem {
                        Image(systemName: "doc.text.image")
                        Text("Today")
                    }
                
                CalendarView()
                    .tabItem {
                        Image(systemName: "calendar")
                        Text("Calendar")
                    }
                
                FavoritesView()
                    .tabItem {
                        Image(systemName: "heart.square.fill")
                        Text("Records")
                    }
                
                TrackerView()
                    .tabItem {
                        Image(systemName: "hourglass")
                        Text("Stats")
                    }
                
                HelpView()
                    .tabItem {
                        Image(systemName: "questionmark.circle")
                        Text("Help")
                    }
                //            }
                //            .accentColor(.red)
            }
            .onAppear {
                CoreDataController.shared.addDailySurvey(mood: "very bad", reason: "Diet")
                CoreDataController.shared.addDailySurvey(mood: "bad", reason: "Diet")
                CoreDataController.shared.addDailySurvey(mood: "bad", reason: "Love")
                CoreDataController.shared.addDailySurvey(mood: "very good", reason: "University")
                CoreDataController.shared.addDailySurvey(mood: "good", reason: "Stress")
                CoreDataController.shared.addDailySurvey(mood: "bad", reason: "Friends")
                CoreDataController.shared.addDailySurvey(mood: "very bad", reason: "Friends")
                CoreDataController.shared.addDailySurvey(mood: "very bad", reason: "Diet")
                CoreDataController.shared.addDailySurvey(mood: "very bad", reason: "Stress")
                CoreDataController.shared.addDailySurvey(mood: "very bad", reason: "Stress")

            }
            //        .fullScreenCover(isPresented: $shouldShowOnboarding, content: { Onboarding(shouldShowOnboarding: $shouldShowOnboarding)}
            //            )
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
