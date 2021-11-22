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
                
                TrackerView()
                    .tabItem {
                        Image(systemName: "calendar")
                        Text("Track")
                    }

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

                HelpView()
                    .tabItem {
                        Image(systemName: "questionmark.circle")
                        Text("Help")
                    }
//            }
//            .accentColor(.red)
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
