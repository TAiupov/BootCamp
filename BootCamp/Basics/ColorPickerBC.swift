//
//  ColorPickerBC.swift
//  BootCamp
//
//  Created by Tagir Aiupov on 2022-03-12.
//

import SwiftUI

struct ColorPickerBC: View {
    @State private var bgColor: Color = .red
    var body: some View {
        ZStack {
            bgColor
                .ignoresSafeArea()
            
            ColorPicker(selection: $bgColor,
                        supportsOpacity: false) {
                Text("Select Color")
            }
            .padding()
            .background(Color.black.cornerRadius(10))
            .foregroundColor(.white)
            .font(.headline)
            .padding(50)
            
        }
    }
}

struct ColorPickerBC_Previews: PreviewProvider {
    static var previews: some View {
        ColorPickerBC()
    }
}
