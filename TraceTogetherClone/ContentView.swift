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
            
            
            
            NavigationView {
                HistoryTabView().navigationTitle("History").navigationBarTitleDisplayMode(.inline).toolbar {
                    Image(systemName: "barcode.viewfinder").foregroundColor(.red)
                }
            }
            .tabItem {
                Image(systemName: "clock.arrow.circlepath")
                Text("History")
            }
            
            
            
            NavigationView {
                UploadView().navigationTitle("Upload").navigationBarTitleDisplayMode(.inline).toolbar {
                    Image(systemName: "barcode.viewfinder").foregroundColor(.red)
                }
            }
            .tabItem {
                Image(systemName: "icloud.and.arrow.up.fill")
                Text("Upload")
            }
            
            
            /* toolbar item example */
            
            
//            MoreTabView().navigationTitle("More") .navigationBarTitleDisplayMode(.inline).toolbar {
//                ToolbarItem(placement: .principal) {
//                    HStack {
//
//                        Spacer()
//
//                        Text("More")
//
//                        Spacer()
//
//
//                        Image(systemName: "barcode.viewfinder")
//                    }
//                }
//            }
            
            
//        https://www.hackingwithswift.com/quick-start/swiftui/how-to-add-bar-items-to-a-navigation-view
            NavigationView {
                MoreTabView().navigationTitle("More") .navigationBarTitleDisplayMode(.inline).toolbar {
                    Image(systemName: "barcode.viewfinder").foregroundColor(.red)
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
