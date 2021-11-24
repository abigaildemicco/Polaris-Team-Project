//
//  WritingThoughts.swift
//  Polaris
//
//  Created by Antonio Iacono on 22/11/21.
//

import SwiftUI

struct TextFieldView: View {
    @State var textFieldText: String = ""
    @State var dataArray: [String] = []
//    @State var title : String = ""
//    @State var dataArray2: [String] = []
//
    
    var body: some View {
        NavigationView{
            VStack{
                TextField("Type a name...", text: $textFieldText)
                    .foregroundColor(.black)
                //            .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                    .background(Color.gray.opacity(0.15).cornerRadius(10))
                    .font(.headline)
//                    .padding()
//                TextField("Type your feelings...", text: $title)
//                    .padding()
//                    .background(Color.gray.opacity(0.2).cornerRadius(10))
//                    .font(.headline)
//                    .padding()
                
                Button(action: {
                    saveText()
                }, label: {
                    Text("Save".uppercased())
                        .padding()
                        .background(Color.blue.cornerRadius(10))
                        .foregroundColor(.white)
                        .font(.headline)
                    
                })
                
                VStack{
                    ForEach(dataArray, id: \.self){ data in
                        
                        Text(data)
                        
                            .foregroundColor(.black)
                    }
                    
                    
//                    ForEach(dataArray2, id: \.self){ name in
//                        Text(name)
//                        //                    .foregroundColor(.red)
//                    }
//
                    
                }
                //            .padding(.leading)
                .frame(width: UIScreen.main.bounds.width - 32,height: 150,alignment:.leading)
                .background(Color.gray.brightness(0.38))
                .clipShape(RoundedRectangle(cornerRadius: 25.0, style: .continuous))
                
            }
            .navigationTitle(Text("My Thoughts"))}
       
    }
    func saveText (){
        dataArray.append(textFieldText)
//        dataArray2.append(title)
    }
}

struct TextFieldView_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldView()
    }
}
