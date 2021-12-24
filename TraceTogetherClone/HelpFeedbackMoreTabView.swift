//
//  HelpFeedbackMoreTabView.swift
//  TraceTogetherClone
//
//  Created by Muhd Mirza on 25/12/21.
//

import SwiftUI

struct HelpFeedbackMoreTabView: View {
    
    var helpAndFeedbackLinksArray: [String] = []
    
    var body: some View {
        VStack {
            HStack {
                Text("**Help & Feedback**").font(.headline)

                Spacer()
            }.padding(.leading, 30).padding(.bottom, 20).padding(.top, 30)
            
            ForEach(0..<helpAndFeedbackLinksArray.count, id:\.self) { index in
                VStack {
                    HStack {
                        Text(helpAndFeedbackLinksArray[index])
                        
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

struct HelpFeedbackMoreTabView_Previews: PreviewProvider {
    
    static var helpAndFeedbackLinksArray = ["Report Vulnerability", "Help", "Submit Error Logs"]
    
    static var previews: some View {
        HelpFeedbackMoreTabView(helpAndFeedbackLinksArray: helpAndFeedbackLinksArray)
    }
}
