//
//  OthersMoreTabView.swift
//  TraceTogetherClone
//
//  Created by Muhd Mirza on 25/12/21.
//

import SwiftUI

struct OthersMoreTabView: View {
    
    var otherLinksArray: [String] = []
    
    var body: some View {
        VStack {
            HStack {
                Text("**Others**").font(.headline)

                Spacer()
            }.padding(.leading, 30).padding(.bottom, 20).padding(.top, 30)
            
            ForEach(0..<otherLinksArray.count, id:\.self) { index in
                VStack {
                    HStack {
                        Text(otherLinksArray[index])
                        
                        Spacer()
                        
                        Image(systemName: "chevron.right")
                            .font(.system(size: 20.0))
                            .foregroundColor(.black)
                            .padding(.trailing, 20)
                    }.padding(.leading, 30).padding(.bottom, 40)
                    
                    Divider()
                }
            }
        }
    }
}

struct OthersMoreTabView_Previews: PreviewProvider {
    
    static var otherLinksArray = ["Tips and Shortcuts"]
    
    static var previews: some View {
        OthersMoreTabView(otherLinksArray: otherLinksArray)
    }
}
