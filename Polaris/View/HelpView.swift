//
//  HelpView.swift
//  Polaris app
//
//  Created by Keyhan Mortezaeifar on 15/11/21.
//  List of help that could be usefull

import SwiftUI

struct HelpView: View {
        
    var body: some View {
        NavigationView {
            List (helpers) { helper in
                NavigationLink {
                    InformationsView(helper: helper)
                } label: {
                    Text("\(helper.helperName)")
                        .fontWeight(.bold)
                    Text("\(helper.helperSubtitle)")
                }
                .navigationBarTitle(Text("Help"))
                
            }
        }
    }
}

struct HelpView_Previews: PreviewProvider {
    static var previews: some View {
        HelpView()
    }
}
