//
//  AnyTransitions.swift
//  BootCamp
//
//  Created by Tagir Aiupov on 2021-12-05.
//

import SwiftUI

struct RotateViewModifier: ViewModifier {
    let rotation: Double
    func body(content: Content) -> some View {
        content
            .rotationEffect(Angle(degrees: rotation))
            .offset(
                x: rotation != 0 ? UIScreen.main.bounds.width : 0,
                y: rotation != 0 ? UIScreen.main.bounds.height : 0
            )
    }
}

extension AnyTransition {
    
    static var rotating: AnyTransition {
        AnyTransition.modifier(active: RotateViewModifier(rotation: 180),
                               identity: RotateViewModifier(rotation: 0))
    }
    
    static var rotating2: AnyTransition {
        AnyTransition.modifier(active: RotateViewModifier(rotation: 180),
                               identity: RotateViewModifier(rotation: 0))
    }
}

struct AnyTransitions: View {
    @State private var showRectangle: Bool = false
    var body: some View {
        VStack {
            Spacer()
            
            if showRectangle {
                RoundedRectangle(cornerRadius: 25)
                    .frame(width: 250, height: 350)
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .transition(AnyTransition.rotating.animation(.easeInOut))
            }
            Spacer()
            
            Text("Click me")
                .withDefaultButtonFormatting()
                .onTapGesture {
                    withAnimation(.easeInOut) {
                        showRectangle.toggle()
                    }
                }
        }
    }
}

struct AnyTransitions_Previews: PreviewProvider {
    static var previews: some View {
        AnyTransitions()
    }
}
