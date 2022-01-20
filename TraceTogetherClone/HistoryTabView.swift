//
//  HistoryTabView.swift
//  TraceTogetherClone
//
//  Created by Muhd Mirza on 13/1/22.
//

import SwiftUI

struct HistoryTabView: View {
    
    @State var selectedTabIndex = 0
    
    var dateArr = ["Fri, 14 Jan", "Sat, 15 Jan", "Sun, 16 Jan"]
    var placeArr = ["Place 1", "Place 2", "Place 3"]
    var bluetoothExchangeCountArr = [5, 42, 10]
    var timeStringArr = ["2:38PM - 3:56PM", "4:38PM - 5:56PM", "6:30PM - 6:56PM"]

    var body: some View {
        VStack {
            TopTabBarView(selectedTabIndex: $selectedTabIndex)
            
            if selectedTabIndex == 0 {
                ScrollView {
                    HStack {
                        Text("Past 25 days").fontWeight(.bold).font(.system(size: 20.0))
                        Image(systemName: "questionmark.circle.fill").foregroundColor(Color.gray)
                        
                        Spacer()
                    }.padding(.leading, 10)
                    
                    
                    VStack {
                        ForEach(0..<dateArr.count, id: \.self) { index in
                            VStack {
                                DatePanelView(dateString: dateArr[index])
                                BluetoothExchangeCountView(bluetoothExchange: bluetoothExchangeCountArr[index])
                                PlaceCheckInView(place: placeArr[index], timeString: timeStringArr[index])
                            }
                        }
                    }
                    
                    
                    Spacer()
                }
            } else {
                VStack() {
                    Spacer()
                    
                    Text("If your TraceTogether or SafeEntry records indicate that you have possible exposure to COVID-19, **Authorities will inform you via SMS and/or call.**").multilineTextAlignment(.center).padding(.bottom, 10)
                    Text("Stay safe, take care! :)")
                    
                    Spacer()
                }.padding(.leading, 10)
                
                Spacer()
            }
        }
    }
}

struct HistoryTabView_Previews: PreviewProvider {
    static var previews: some View {
        HistoryTabView()
    }
}
