//
//  TransitionBC.swift
//  BootCamp
//
//  Created by Tagir Aiupov on 2022-02-06.
//

import SwiftUI

struct TransitionBC: View {
    @State var showView = false
    var body: some View {
        ZStack(alignment: .bottom) {
            
            VStack {
                Button("Button") {
                    showView.toggle()
                }
                Spacer()
            }
            
            if showView {
                
                RoundedRectangle(cornerRadius: 25)
                    .frame(height: UIScreen.main.bounds.height / 2)
                    .transition(.asymmetric(
                        insertion: .move(edge: .bottom),
                        removal: AnyTransition.opacity.animation(.easeInOut)))
                    .animation(.easeInOut)
                
//                RoundedRectangle(cornerRadius: 25)
//                    .frame(height: UIScreen.main.bounds.height / 2)
//                    .transition(AnyTransition.opacity.animation(.easeInOut))
                    
//                RoundedRectangle(cornerRadius: 25)
//                    .frame(height: UIScreen.main.bounds.height / 2)
//                    .transition(.slide)
//                    .animation(.easeInOut)
                
//                RoundedRectangle(cornerRadius: 25)
//                    .frame(height: UIScreen.main.bounds.height / 2)
//                    .transition(.move(edge: .leading))
//                    .animation(.easeInOut)
            }
        }
        .edgesIgnoringSafeArea(.bottom)
    }
}

struct TransitionBC_Previews: PreviewProvider {
    static var previews: some View {
        TransitionBC()
    }
}
