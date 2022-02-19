//
//  PopoverBC.swift
//  BootCamp
//
//  Created by Tagir Aiupov on 2022-02-08.
//

import SwiftUI

struct PopoverBC: View {
    @State var showNewScreen: Bool = false
    var body: some View {
        ZStack {
            Color.orange
                .ignoresSafeArea()
            
            VStack {
                Button("Button") {
                    withAnimation {
                        showNewScreen.toggle()
                    }
                }
                .font(.largeTitle)
                
                Spacer()
            }
            // METHOD 1 - SHEET
//            .sheet(isPresented: $showNewScreen, onDismiss: nil) {
//                NewScreen()
//            }
            // METHOD 2 - TRANSITION
//            ZStack {
//                if showNewScreen {
//                    NewScreen(showNewScreen: $showNewScreen)
//                        .padding(.top, 100)
//                        .transition(.move(edge: .bottom))
//                        .animation(.spring(), value: showNewScreen)
//                }
//            }
//            .zIndex(2.0)
            
            // METHOD 3 - ANIMATION OFFSET
            NewScreen(showNewScreen: $showNewScreen)
                .padding(.top, 100)
                .offset(y: showNewScreen ? 0: UIScreen.main.bounds.height)
                .animation(.spring(), value: showNewScreen)
            
        }
    }
}

struct NewScreen: View {
    
    @Environment(\.presentationMode) var pm
    @Binding var showNewScreen: Bool
    var body: some View {
        ZStack(alignment: .topLeading) {
            Color.purple
                .ignoresSafeArea()
            
            Button {
//                pm.wrappedValue.dismiss() // Method 1 - Sheet presentation
                showNewScreen.toggle()
            } label: {
                Image(systemName: "xmark")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .padding(20)
            }

        }
    }
}

struct PopoverBC_Previews: PreviewProvider {
    static var previews: some View {
        PopoverBC()
    }
}
