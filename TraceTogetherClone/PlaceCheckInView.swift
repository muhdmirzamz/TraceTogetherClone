//
//  PlaceCheckInView.swift
//  TraceTogetherClone
//
//  Created by Muhd Mirza on 18/1/22.
//

import SwiftUI

struct PlaceCheckInView: View {
    
    var place: String
    var timeString: String
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(place).fontWeight(.bold)
                Text(timeString)
            }.padding(.leading, 20).padding(.top, 15).padding(.bottom, 15)
            
            Spacer()
            
            Image(systemName: "star")
                .font(.system(size: 20.0))
                .foregroundColor(.blue)
                .padding(.trailing, 15)
        }
    }
}

struct PlaceCheckInView_Previews: PreviewProvider {
    static var place = "Place 1"
    static var timeString = "2:38PM - 3:00PM"
    
    static var previews: some View {
        PlaceCheckInView(place: place, timeString: timeString)
    }
}
