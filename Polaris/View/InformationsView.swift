//
//  Informations.swift
//  Polaris app
//
//  Created by Keyhan Mortezaeifar on 15/11/21.
//  The details of each help you can find in the app

import SwiftUI

struct InformationsView: View {
    @State private var showingSheet = false
    var helper: HelperModel
    
    var body: some View {
        
        
        NavigationView {
            VStack(alignment: .leading) {
                Spacer()
                Text(helper.helperName)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(.bottom)
                Text(helper.helperSubtitle)
                    .fontWeight(.bold)
                
                Text("\(helper.helperDescription)\n\(helper.helperAdress)\nEmail: \(helper.helperMail)\nNumber: \(helper.helperNumber)")
                    .multilineTextAlignment(.leading)
                    .padding(.bottom)
                Spacer()
//                Text("Specialized Tutoring Services – \nServices for Students with SLD")
//                    .fontWeight(.bold)
//                Text("Via Cinthia, 26\nComplesso Universitario Monte Sant'Angelo\nBuilding 1 (Centri Comuni) - ground floor\n80126 Naples\nFax: 081 676768\nEmail: tutorato.sinapsi@unina.it")
//                    .padding(.bottom)
                

                
                Spacer()
                    .padding(.bottom)
            }
        }
        .navigationBarTitle(Text("Information"))
    }
}

struct InformationsView_Previews: PreviewProvider {
    static var previews: some View {
        InformationsView(helper: helper1)
    }
}
