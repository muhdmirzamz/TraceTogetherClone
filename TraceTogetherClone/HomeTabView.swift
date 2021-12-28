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
            ZStack {
                
                Image("charleyrivers").resizable().frame(height: 200)

                HStack {
                    Image(systemName: "wave.3.right")
                        .font(.system(size: 20.0))
                        .foregroundColor(.blue)
                        .padding(.leading, 20)
                    Text("1-3 devices nearby")
                    Spacer()
                    Image(systemName: "exclamationmark.shield")
                        .font(.system(size: 20.0)).padding(.trailing, 20)
                }.background(Color.white).frame(width: 350, height: 30).padding(.bottom, 60)
                
                
            }
            
            
            
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
            
            Spacer()
        }.ignoresSafeArea(edges: .top)
    }
}

struct HomeTabView_Previews: PreviewProvider {
    static var previews: some View {
        HomeTabView()
    }
}
