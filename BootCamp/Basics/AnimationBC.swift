//
//  AnimationBC.swift
//  BootCamp
//
//  Created by Tagir Aiupov on 2022-02-06.
//

import SwiftUI

struct AnimationBC: View {
    @State var isAnimated: Bool = false
    var body: some View {
        VStack {
            Button("Button") {
                withAnimation(
                    Animation
                        .default
                        .repeatCount(5, autoreverses: true)
                ) {
                    isAnimated.toggle()
                }
            }
            Spacer()
            RoundedRectangle(cornerRadius: isAnimated ? 50:25)
                .fill(isAnimated ? Color.red : Color.green)
                .frame(
                    width: isAnimated ? 100:300,
                    height: isAnimated ? 100:300)
                .rotationEffect(Angle(degrees: isAnimated ? 45:0))
                .offset(y: isAnimated ? 300:0)
            Spacer()
        }
    }
}

struct AnimationBC_Previews: PreviewProvider {
    static var previews: some View {
        AnimationBC()
    }
}
