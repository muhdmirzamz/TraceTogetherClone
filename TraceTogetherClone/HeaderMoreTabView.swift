//
//  HeaderMoreTabView.swift
//  TraceTogetherClone
//
//  Created by Muhd Mirza on 25/12/21.
//

import SwiftUI

struct HeaderMoreTabView: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text("**Hello** 👋🏼").font(.title)
                Text("App version 1.0.0").font(.subheadline).fontWeight(.light)
            }

            Spacer()
        }.padding(.leading, 30).padding(.bottom, 30)
    }
}

struct HeaderMoreTabView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderMoreTabView()
    }
}
