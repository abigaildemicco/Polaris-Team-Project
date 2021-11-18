//
//  SplashView.swift
//  Polaris app
//
//  Created by Keyhan Mortezaeifar on 15/11/21.
//  This is what appears when you launch the app

import SwiftUI

struct SplashView: View {
    @State var isActive:Bool = false
    
    @AppStorage("shouldShowOnboarding") var shouldShowOnboarding: Bool = true
    //    @Binding var shouldShowOnboarding: Bool
    
    var body: some View {
        VStack {
            if !self.isActive {
                VStack {
                    Image("loadLogo1")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 200, height: 50)
                        .padding()
                    //                                 Image("loadLogo2")
                    //                                     .resizable()
                    //                                     .aspectRatio(contentMode: .fit)
                    //                                     .frame(width: 200, height: 50)
                }
            } else {
                ContentView()
            }
            //            .fullScreenCover(isPresented: $shouldShowOnboarding, content: { Onboarding(shouldShowOnboarding: $shouldShowOnboarding)}
            //            )
        }
        
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 2.5) {
                withAnimation {
                    self.isActive = true
                }
            }
        }
    }
}

struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView()
    }
}
