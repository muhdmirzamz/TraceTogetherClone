//
//  AccountsMoreTabView.swift
//  TraceTogetherClone
//
//  Created by Muhd Mirza on 25/12/21.
//

import SwiftUI

struct AccountsMoreTabView: View {
    
    var accountLinksArray: [String] = []
    
    var body: some View {
        VStack {
            HStack {
                Text("**Account**").font(.headline)

                Spacer()
            }.padding(.leading, 30).padding(.bottom, 20)
            
            
            ForEach(0..<accountLinksArray.count, id:\.self) { index in
                VStack {
                    HStack {
                        Text(accountLinksArray[index])
                        
                        Spacer()
                        
                        Image(systemName: "chevron.right")
                            .font(.system(size: 20.0))
                            .foregroundColor(.black)
                            .padding(.trailing, 20)
                    }.padding(.leading, 30).padding(.bottom, 8)
                    
                    Divider()
                }
            }
        }
    }
}

struct AccountsMoreTabView_Previews: PreviewProvider {
    
    static var accountLinksArray = ["Your Profile", "Manage Family Members", "Change Language"]
    
    static var previews: some View {
        AccountsMoreTabView(accountLinksArray: accountLinksArray)
    }
}
