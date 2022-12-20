//
//  RemoteControlView.swift
//  nebularemote
//
//  Created by Max Fritzhand on 12/20/22.
//

import SwiftUI
import CoreBluetooth

struct RemoteControlView: View {
    
    @State private var positionSlider: Double = 0.1
    
    
    @State private var value: Double = 0.5
    var body: some View {
        VStack{
            Text("Servo Control")
                .padding(.bottom, 100)
                Slider(value: $value, in: 0...1, step: 0.1)
                    .frame(width: 150, height: 200)
                    .padding(.horizontal, 20)
                    .foregroundColor(.red)
                    .rotationEffect(.degrees(-90.0), anchor: .topLeading)
                    .accentColor(.green)
            
        }
    }
      
}

struct RemoteControlView_Previews: PreviewProvider {
    static var previews: some View {
        RemoteControlView()
    }
}
