//
//  DatePanelView.swift
//  TraceTogetherClone
//
//  Created by Muhd Mirza on 17/1/22.
//

import SwiftUI

struct DatePanelView: View {
    let dateString: String
    
    var body: some View {
        HStack {
            Text(dateString)
            
            Spacer()
        }.padding(.leading, 20).padding(.top, 5).padding(.bottom, 5).background(Color.init(red: 242/255, green: 242/255, blue: 242/255, opacity: 1.0))
    }
}

struct DatePanelView_Previews: PreviewProvider {
    static let dateString = "Sun, 16 Jan"
    
    static var previews: some View {
        DatePanelView(dateString: dateString)
    }
}
