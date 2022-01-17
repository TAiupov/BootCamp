//
//  RotationGestureBC.swift
//  BootCamp
//
//  Created by Тагир Аюпов on 2021-04-20.
//

import SwiftUI

struct RotationGestureBC: View {
    @State private var angle: Angle = Angle(degrees: 0)
    var body: some View {
        Text("Hello, World!")
            .font(.largeTitle)
            .fontWeight(.bold)
            .foregroundColor(.white)
            .padding(50)
            .background(Color.blue.cornerRadius(10))
            .rotationEffect(angle)
            .gesture(
            RotationGesture()
                .onChanged { value in
                    angle = value
                }
                .onEnded { value in
                    withAnimation(.spring()) {
                        angle = Angle(degrees: 0)
                    }
                }
            )
        
    }
}

struct RotationGestureBC_Previews: PreviewProvider {
    static var previews: some View {
        RotationGestureBC()
    }
}
