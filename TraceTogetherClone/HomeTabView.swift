//
//  HomeTabView.swift
//  TraceTogetherClone
//
//  Created by Muhd Mirza on 27/12/21.
//

import SwiftUI

struct HomeTabView: View {
    var body: some View {
        VStack {
            
            HeaderView()
            HealthStatusView()
            
            Divider().padding(.top, 20).padding(.bottom, 20)
            
            CheckInView()
            
            Divider().padding(.top, 20)
            
            HStack {
                Image(systemName: "rectangle.and.hand.point.up.left.filled").font(.system(size: 40.0))
                Text("Stay safe together.\nShare the app!").padding(.leading, 10).font(.body)
                
                Spacer()
                
                Image(systemName: "chevron.right").font(.system(size: 15.0))
            }
            .padding(40)
            .overlay(
                RoundedRectangle(cornerRadius: 16)
                    .strokeBorder(style: StrokeStyle(lineWidth: 0.5, dash: [4]))
                    .padding(30)
            )
            
            
            Spacer()
        }.ignoresSafeArea(edges: .top)
    }
}

struct HomeTabView_Previews: PreviewProvider {
    static var previews: some View {
        HomeTabView()
    }
}
