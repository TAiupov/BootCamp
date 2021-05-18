//
//  MagnificationGesture.swift
//  BootCamp
//
//  Created by Тагир Аюпов on 2021-04-20.
//

import SwiftUI

struct MagnificationGestureBC: View {
    @State private var currentAmount: CGFloat = 0
    @State var lastAmount: CGFloat = 0
    
    var body: some View {
        
        VStack {
            HStack {
                Circle()
                    .frame(width: 45, height: 45)
                Text("tagirich")
                Spacer()
                Image(systemName: "ellipsis")
            }.padding(.horizontal)
            Rectangle().frame(height: 350)
                .scaleEffect(1.0 + currentAmount + lastAmount)
                .gesture(
                MagnificationGesture()
                    .onChanged { value in
                        currentAmount = value - 1
                    }
                    .onEnded { value in
                        withAnimation(.easeInOut) {
                            currentAmount = 0
                        }
                    }
                )
            HStack {
                Image(systemName: "heart.fill")
                Image(systemName: "text.bubble.fill")
                Spacer()
            }
            .padding(.horizontal)
            .font(.headline)
            
            Text("This is my caption")
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding()
            
        }
        
        
//        Text("Hello, World!")
//            .font(.title)
//            .padding(40)
//            .background(Color.red.cornerRadius(10))
//            .scaleEffect(1.0 + currentAmount + lastAmount)
//            .gesture(
//                MagnificationGesture()
//                    .onChanged { value in
//                        currentAmount = value - 1
//                    }
//                    .onEnded { value in
//                        lastAmount += currentAmount
//                        currentAmount = 0
//                    }
//
//
//            )
    }
}

struct MagnificationGesture_Previews: PreviewProvider {
    static var previews: some View {
        MagnificationGestureBC()
    }
}
