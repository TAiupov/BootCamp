//
//  SafeAreaBC.swift
//  BootCamp
//
//  Created by Tagir Aiupov on 2022-01-18.
//

import SwiftUI

struct SafeAreaBC: View {
    var body: some View {
        
        ScrollView {
            VStack {
                Text("Hello, World!")
                    .font(.largeTitle)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                ForEach(0..<10) { index in
                    RoundedRectangle(cornerRadius: 25)
                        .fill(Color.green)
                        .frame(height: 150)
                        .shadow(radius: 10)
                        .padding()
                }
            }
        }
        .background(Color.red.ignoresSafeArea())
        
        
//        ZStack {
//            // background
//            Color.blue
//                .ignoresSafeArea()
//            // foreground
//            VStack {
//                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//                Spacer()
//            }
//            .frame(maxWidth: .infinity, maxHeight: .infinity)
//            .background(Color.red)
//        }
    }
}

struct SafeAreaBC_Previews: PreviewProvider {
    static var previews: some View {
        SafeAreaBC()
    }
}
