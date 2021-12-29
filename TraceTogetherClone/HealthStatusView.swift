//
//  HealthStatusView.swift
//  TraceTogetherClone
//
//  Created by Muhd Mirza on 29/12/21.
//

import SwiftUI

struct HealthStatusView: View {
    var body: some View {
        VStack {
            HStack {
                Text("Your COVID Health Status").fontWeight(.bold)
                Spacer()
                Image(systemName: "arrow.triangle.2.circlepath")
            }.frame(width: 320).padding(.top, 20)
            
            HStack {
                VStack {
                    Text("Vaccinated").padding(.bottom, 20)
                    
                    Image(systemName: "checkmark.circle.fill").foregroundColor(.green).font(.system(size: 20.0))
                }
                .frame(width: 150, height: 100)
                .background(Color.init(red: 209/255, green: 227/255, blue: 255/255))
                
                VStack {
                    Text("No test status").padding(.bottom, 20)
                    
                    Image(systemName: "doc.on.clipboard.fill").foregroundColor(.gray).font(.system(size: 20.0))
                }
                .frame(width: 150, height: 100)
                .background(Color.init(red: 223/255, green: 225/255, blue: 230/255))
            }.padding(.top, 20)
        }
    }
}

struct HealthStatusView_Previews: PreviewProvider {
    static var previews: some View {
        HealthStatusView()
    }
}
