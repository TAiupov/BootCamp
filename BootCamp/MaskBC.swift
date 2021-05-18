//
//  MaskBC.swift
//  BootCamp
//
//  Created by Тагир Аюпов on 2021-04-20.
//

import SwiftUI

struct MaskBC: View {
    @State private var rating: Int = 3
    
    var body: some View {
        
        ZStack {
            starsView
                .overlay(
                    overlayView.mask(starsView)
                )
        }
    }
    
    private var overlayView: some View {
        GeometryReader { geometry in
            ZStack(alignment: .leading) {
                Rectangle()
                    .foregroundColor(.yellow)
                    .frame(width: geometry.size.width * CGFloat(rating / 5))
                    
                
            }
        }
        .allowsHitTesting(false)
    }
    
    private var starsView: some View {
        HStack {
            ForEach(1 ..< 6) { index in
                Image(systemName: "star.fill")
                    .font(.largeTitle)
                    .foregroundColor(rating >= index ? Color.yellow : Color.gray)
                    .onTapGesture {
                        withAnimation(.easeInOut) {
                            rating = index
                        }
                    }
            }
        }
    }
}

struct MaskBC_Previews: PreviewProvider {
    static var previews: some View {
        MaskBC()
    }
}
