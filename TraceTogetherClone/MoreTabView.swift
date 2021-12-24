//
//  MoreTabView.swift
//  TraceTogetherClone
//
//  Created by Muhd Mirza on 23/12/21.
//

import SwiftUI

struct MoreTabView: View {
    
    var accountLinksArray = ["Your Profile", "Manage Family Members", "Change Language"]
    var helpAndFeedbackLinksArray = ["Report Vulnerability", "Help", "Submit Error Logs"]
    var otherLinksArray = ["Tips and Shortcuts"]
    
    
    
    var body: some View {
        VStack {
            HeaderMoreTabView()

            
            ScrollView {
                
                AccountsMoreTabView(accountLinksArray: accountLinksArray)

                HelpFeedbackMoreTabView(helpAndFeedbackLinksArray: helpAndFeedbackLinksArray)
                
                OthersMoreTabView(otherLinksArray: otherLinksArray)
                
                AcknowledgementsMoreTabView()
            }
        }
    }
}

struct MoreTabView_Previews: PreviewProvider {
    static var previews: some View {
        MoreTabView()
    }
}
