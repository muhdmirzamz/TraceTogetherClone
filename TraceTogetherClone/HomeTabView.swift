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
            
            VStack {
                HStack {
                    Image(systemName: "menucard.fill").foregroundColor(.red)
                    Text("SafeEntry check in")
                    Spacer()
                }
                .padding(.leading, 25)
                
                HStack {
                    VStack {
                        Image(systemName: "qrcode.viewfinder")
                            .font(.system(size: 30.0))
                            .padding(.bottom, 10)
                        Text("Scan QR")
                    }.padding(.trailing, 20)
                    
                    Spacer()
                    
                    VStack {
                        Image(systemName: "star.fill")
                            .font(.system(size: 30.0))
                            .foregroundColor(.yellow)
                            .padding(.bottom, 8)
                        Text("Scan QR")
                    }
                    
                    Spacer()
                    
                    VStack {
                        Image(systemName: "person.3.fill")
                            .font(.system(size: 30.0))
                            .padding()
                            
                        Text("Scan QR").padding(.bottom, 5)
                    }
                }
                .padding(.leading, 20)
                .padding(.trailing, 20)
                .frame(width: 330, height: 120)
                .background(Color.init(red: 209/255, green: 227/255, blue: 255/255))
            }
            
            Divider().padding(.top, 20)
            
            Spacer()
        }.ignoresSafeArea(edges: .top)
    }
}

struct HomeTabView_Previews: PreviewProvider {
    static var previews: some View {
        HomeTabView()
    }
}
