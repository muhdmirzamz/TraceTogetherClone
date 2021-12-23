//
//  MoreTabView.swift
//  TraceTogetherClone
//
//  Created by Muhd Mirza on 23/12/21.
//

import SwiftUI

struct MoreTabView: View {
    
    var accountLinksArray = ["Your Profile", "Manage Family Members", "Change Language"]
    var helpAndFeedbackLinksArray = ["Report Vulnerability", "Help", "Submit Error Logs"]
    var otherLinksArray = ["Tips and Shortcuts"]
    
    
    
    var body: some View {
        VStack {
            HStack {
                VStack(alignment: .leading) {
                    Text("**Hello** 👋🏼").font(.title)
                    Text("App version 1.0.0").font(.subheadline).fontWeight(.light)
                }

                Spacer()
            }.padding(.leading, 30).padding(.bottom, 30)
            
            
            
            
            ScrollView {
                HStack {
                    Text("**Account**").font(.headline)

                    Spacer()
                }.padding(.leading, 30).padding(.bottom, 20)
                
                
                ForEach(0..<accountLinksArray.count, id:\.self) { index in
                    VStack {
                        HStack {
                            Text(accountLinksArray[index])
                            
                            Spacer()
                            
                            Image(systemName: "chevron.right")
                                .font(.system(size: 20.0))
                                .foregroundColor(.black)
                                .padding(.trailing, 20)
                        }.padding(.leading, 30).padding(.bottom, 8)
                        
                        Divider()
                    }
                }
                
                
                
                
                
                
                HStack {
                    Text("**Help & Feedback**").font(.headline)

                    Spacer()
                }.padding(.leading, 30).padding(.bottom, 20).padding(.top, 30)
                
                ForEach(0..<helpAndFeedbackLinksArray.count, id:\.self) { index in
                    VStack {
                        HStack {
                            Text(helpAndFeedbackLinksArray[index])
                            
                            Spacer()
                            
                            Image(systemName: "chevron.right")
                                .font(.system(size: 20.0))
                                .foregroundColor(.black)
                                .padding(.trailing, 20)
                        }.padding(.leading, 30).padding(.bottom, 8)
                        
                        Divider()
                    }
                }
                
                
                
                
                
                
                HStack {
                    Text("**Others**").font(.headline)

                    Spacer()
                }.padding(.leading, 30).padding(.bottom, 20).padding(.top, 30)
                
                ForEach(0..<otherLinksArray.count, id:\.self) { index in
                    VStack {
                        HStack {
                            Text(otherLinksArray[index])
                            
                            Spacer()
                            
                            Image(systemName: "chevron.right")
                                .font(.system(size: 20.0))
                                .foregroundColor(.black)
                                .padding(.trailing, 20)
                        }.padding(.leading, 30).padding(.bottom, 8)
                        
                        Divider()
                    }
                }
            }
        }
    }
}

struct MoreTabView_Previews: PreviewProvider {
    static var previews: some View {
        MoreTabView()
    }
}
