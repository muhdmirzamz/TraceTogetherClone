//
//  AcknowledgementsMoreTabView.swift
//  TraceTogetherClone
//
//  Created by Muhd Mirza on 25/12/21.
//

import SwiftUI

struct AcknowledgementsMoreTabView: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text("Acknowledgements").padding(.bottom, 5)
                Text("Privacy Policy").padding(.bottom, 5)
                Text("Terms Of Use").padding(.bottom, 5)
                
                Spacer()
                
                Text("Built by")
                Text("Me")
            }.frame(height: 150).padding(.leading, 30).padding(.top, 30).foregroundColor(.white)
            
            Spacer()
        }.background(Color.blue)
    }
}

struct AcknowledgementsMoreTabView_Previews: PreviewProvider {
    static var previews: some View {
        AcknowledgementsMoreTabView()
    }
}
