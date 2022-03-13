//
//  SliderBC.swift
//  BootCamp
//
//  Created by Tagir Aiupov on 2022-03-12.
//

import SwiftUI

struct SliderBC: View {
    @State private var sliderValue: Double = 3
    @State private var color: Color = .red
    var body: some View {
        VStack {
            Text("Value:")
            Text(String(format: "%.2f", sliderValue))
                .foregroundColor(color)
//            Slider(value: $sliderValue)
            
//            Slider(value: $sliderValue, in: 1...5)
//                .tint(.red)
            
//            Slider(value: $sliderValue, in: 1...5, step: 0.5)
//                .tint(.purple)
            
            Slider(value: $sliderValue,
                   in: 1...5,
                   step: 1.0) {
                Text("Title")
            } minimumValueLabel: {
                Text("1")
            } maximumValueLabel: {
                Text("5")
            } onEditingChanged: { _ in
                color = .green
            }
            .padding()

        }
    }
}

struct SliderBC_Previews: PreviewProvider {
    static var previews: some View {
        SliderBC()
    }
}
