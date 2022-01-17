//
//  BluetoothExchangeCountView.swift
//  TraceTogetherClone
//
//  Created by Muhd Mirza on 17/1/22.
//

import SwiftUI

struct BluetoothExchangeCountView: View {
    
    var bluetoothExchange: Int
    
    var body: some View {
        
        HStack {
            VStack(alignment: .leading) {
                Text("TraceTogether").fontWeight(.bold)
                Text("\(bluetoothExchange) Bluetooth exchanges")
            }.padding(.leading, 20).padding(.top, 15).padding(.bottom, 15)
            
            Spacer()
            
            Image(systemName: "wave.3.right")
                .font(.system(size: 20.0))
                .foregroundColor(.blue)
                .padding(.trailing, 20)
        }
        
    }
}

struct BluetoothExchangeCountView_Previews: PreviewProvider {
    static var bluetoothExchange = 10
    
    static var previews: some View {
        BluetoothExchangeCountView(bluetoothExchange: bluetoothExchange)
    }
}
