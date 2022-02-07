//
//  AnimationTimingBC.swift
//  BootCamp
//
//  Created by Tagir Aiupov on 2022-02-06.
//

import SwiftUI

struct AnimationTimingBC: View {
    @State var isAnimating = false
    let timing: Double = 1
    var body: some View {
        VStack {
            Button("Button")  {
                isAnimating.toggle()
            }
            
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimating ? 350:50, height: 100)
                .animation(.spring())
            
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimating ? 350:50, height: 100)
                .animation(.spring(
                    response: timing,
                    dampingFraction: 0.7,
                    blendDuration: 1.0))
            
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimating ? 350:50, height: 100)
                .animation(Animation.linear(duration: timing))
            
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimating ? 350:50, height: 100)
                .animation(Animation.easeIn(duration: timing))

            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimating ? 350:50, height: 100)
                .animation(Animation.easeOut(duration: timing))

            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimating ? 350:50, height: 100)
                .animation(Animation.easeInOut(duration: timing))
        }
    }
}

struct AnimationTimingBC_Previews: PreviewProvider {
    static var previews: some View {
        AnimationTimingBC()
    }
}
