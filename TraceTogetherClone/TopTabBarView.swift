//
//  TopTabBarView.swift
//  TraceTogetherClone
//
//  Created by Muhd Mirza on 15/1/22.
//

import SwiftUI

/*
 the .constant is needed to actually create a @Binding variable
 because we are dealing with a State variable that is of type Int
 but the passed @Binding variable is a Bool
 
 So we are checking to see if the index tapped is the same hardcoded index
 */

struct TopTabBarView: View {
    
    @Binding var selectedTabIndex: Int
    
    var body: some View {
        HStack {
            TopTabBarButton(text: "All records", isSelected: .constant(selectedTabIndex == 0)).onTapGesture {
                selectedTabIndex = 0
            }
            
            TopTabBarButton(text: "Possible exposures", isSelected: .constant(selectedTabIndex == 1)).onTapGesture {
                selectedTabIndex = 1
            }
        }
    }
}

struct TopTabBarView_Previews: PreviewProvider {
    
    @State static var selectedTabIndex = 0

    static var previews: some View {
        TopTabBarView(selectedTabIndex: $selectedTabIndex)
    }
}
