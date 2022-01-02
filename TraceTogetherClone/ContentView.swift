//
//  ContentView.swift
//  TraceTogetherClone
//
//  Created by Muhd Mirza on 22/12/21.
//

import SwiftUI

struct ContentView: View {
    
    init() {
        UITabBar.appearance().backgroundColor = UIColor.white
    }
    
    var body: some View {
        TabView {
            NavigationView {
                HomeTabView()
            }
            .tabItem {
                Image(systemName: "house.fill")
                Text("Home")
            }.onAppear {

            }
            
            
            
            
            Text("History tab")
                .font(.system(size: 30, weight: .bold, design: .rounded))
            .tabItem {
                Image(systemName: "clock.arrow.circlepath")
                Text("History")
            }
            
            Text("Search Tab")
                .font(.system(size: 30, weight: .bold, design: .rounded))
            .tabItem {
                Image(systemName: "icloud.and.arrow.up.fill")
                Text("Upload")
            }
            
            NavigationView {
                MoreTabView().navigationBarTitleDisplayMode(.inline).toolbar {
                    ToolbarItem(placement: .principal) {
                        HStack {
                            
                            Spacer()
                            
                            Text("More").padding(.leading, 30)
                            
                            Spacer()
                            
                            
                            Image(systemName: "barcode.viewfinder")
                        }
                    }
                }
            }
            .tabItem {
                Image(systemName: "text.justify")
                Text("More")
            }
            
            
            
//            ProfileView()
//            .tabItem {
//                Image(systemName: "person.fill")
//            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
