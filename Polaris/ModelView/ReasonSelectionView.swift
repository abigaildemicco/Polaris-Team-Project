//
//  ReasonSelectionView.swift
//  Polaris
//
//  Created by Antonio Iacono on 18/11/21.
//


import SwiftUI

struct ReasonSelectionView: View {
    
    private var items: [GridItem] = [
        GridItem(.fixed(105), spacing: 14),
        GridItem(.fixed(105), spacing: 14),
        GridItem(.fixed(105), spacing: 14)
    ]
    
    var body: some View {
        
        // ZStack{
        
        //     RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Corner Radius@*/10.0/*@END_MENU_TOKEN@*/)
        //        .foregroundColor(.init(red: 0.2, green: 0.2, blue: 0.2))
        //        .brightness(0.65)
        //        .frame(width: UIScreen.main.bounds.width - 32, height: 350)
        
        VStack{
            Text("Why?").font(.system(size: 24, weight: .heavy, design: .rounded)).padding()
            
            HStack{
                LazyVGrid(columns: items){
                    ForEach(Reasons){ Reason in
                        
                        
                        EmojiButton(action: {
                            print("Some")
                        }, content:
                                        Text(Reason.name)
                                            .font(.system(size: 16, weight: .heavy, design: .rounded))
                                            .foregroundColor(.white)
                                            .font(.headline)
                                            .frame(width:100 ,height: 50)
                                            .background(Color.blue)
                                            .cornerRadius(20)
                        )
                        
                        
                 /*
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                            Text(Reason.name)
                                .font(.system(size: 16, weight: .heavy, design: .rounded))
                                .foregroundColor(.white)
                                .font(.headline)
                                .frame(width:100 ,height: 50)
                                .background(Color.blue)
                                .cornerRadius(20)
                            
                            
                        }
                  */
                    
                    }
                }
                
            }.padding(.bottom)
        }
        .frame(width: UIScreen.main.bounds.width - 32)
        .background(Color.gray.brightness(0.38))
        .clipShape(RoundedRectangle(cornerRadius: 25.0, style: .continuous))
        .padding(.bottom)
        
        
    }
}

struct ReasonSelectionView_Previews: PreviewProvider {
    static var previews: some View {
        ReasonSelectionView()
    }
}




struct ReasonButton<Content: View>: View {
    
    var action: () -> Void
    var content: Content
    
    @State var isScaled: Bool = false
    
    var body: some View{
        
        Button {
            isScaled.toggle()
            action()
        } label: {
            content
                .scaleEffect(isScaled ? 1.5 : 1)
        }

    }
    
}
