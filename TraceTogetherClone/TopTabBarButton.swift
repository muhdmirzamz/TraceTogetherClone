//
//  TopTabBarButton.swift
//  TraceTogetherClone
//
//  Created by Muhd Mirza on 15/1/22.
//

import SwiftUI

/*
  button's responsibility is to ensure isSelected state
 */

struct TopTabBarButton: View {
    var text: String
    
    @Binding var isSelected: Bool
    
    var body: some View {
        Text(text)
            .fontWeight(isSelected ? .bold : .regular)
            .padding()
            .background(Color.init(red: 242/255, green: 242/255, blue: 242/255, opacity: 1.0))
            .foregroundColor(.black)
            .cornerRadius(40)
    }
}

struct TopTabBarButton_Previews: PreviewProvider {
    @State static var isSelected = true
    
    
    static var previews: some View {
        TopTabBarButton(text: "All Records", isSelected: $isSelected)
    }
}
