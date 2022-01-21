//
//  UploadView.swift
//  TraceTogetherClone
//
//  Created by Muhd Mirza on 22/1/22.
//

import SwiftUI

struct UploadView: View {
    var body: some View {
        VStack {
            VStack {
                Image(systemName: "icloud.and.arrow.up.fill").font(.system(size: 50))
                Text("Authorities")
            }.padding(.bottom, 30).padding(.top, 20)
            
            VStack {
                Text("An upload code is only given to patients with COVID-19").padding(.bottom, 20)
                
                Text("If you *did not* get an upload code from the Authorities, you *do not* need to upload data :)")
            }.frame(height: 180).padding(10).background(Color.init(red: 255/255, green: 232/255, blue: 254/255, opacity: 1.0))
            
            Spacer()
            
            HStack {
                Spacer()
                
                Button(action: {
                    // What to perform
                }) {
                    Text("ENTER UPLOAD CODE").frame(maxWidth: .infinity).padding() .foregroundColor(.white).background(Color.red).cornerRadius(30)
                    // How the button looks like
                }
                
                Spacer()
            }
        }
    }
}

struct UploadView_Previews: PreviewProvider {
    static var previews: some View {
        UploadView()
    }
}
