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
                Text(helper1.helperName)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(.bottom)
                Text(helper1.helperSubtitle)
                    .fontWeight(.bold)
                
                Text("\(helper1.helperDescription)\n\(helper1.helperAdress)\nEmail: \(helper1.helperMail)\nNumber: \(helper1.helperNumber)")
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
