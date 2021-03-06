//
//  HeaderView.swift
//  TraceTogetherClone
//
//  Created by Muhd Mirza on 29/12/21.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
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
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
    }
}
