//
//  SplashView.swift
//  Polaris app
//
//  Created by Keyhan Mortezaeifar on 15/11/21.
//  This is what appears when you launch the app

import SwiftUI

struct SplashView: View {
    @State var isActive: Bool = false
    @State var scale: CGFloat = 0
    @AppStorage("shouldShowOnboarding") var shouldShowOnboarding: Bool = true
    //    @Binding var shouldShowOnboarding: Bool
    
    var body: some View {
        VStack {
            if !self.isActive {
//                ZStack {
//                    Text("Take a deep breath")
//                    Spacer()
                    Image("IconMiddle")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 200, height: 200)
                        .padding()
                        .scaleEffect(scale)
                        .onAppear {
                            let baseAnimation = Animation.easeInOut(duration: 2)
                            let repeated = baseAnimation.repeatForever(autoreverses: true)

                            withAnimation(repeated) {
                                scale = 100
                            }
                        }
                    //                                 Image("loadLogo2")
                    //                                     .resizable()
                    //                                     .aspectRatio(contentMode: .fit)
                    //                                     .frame(width: 200, height: 50)
//                }
            } else {
                ContentView()
            }
            //            .fullScreenCover(isPresented: $shouldShowOnboarding, content: { Onboarding(shouldShowOnboarding: $shouldShowOnboarding)}
            //            )
        }
        
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
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
