//
//  ExtractedFunctionsBC.swift
//  BootCamp
//
//  Created by Tagir Aiupov on 2022-01-23.
//

import SwiftUI

struct ExtractedFunctionsBC: View {
    @State var bgColor: Color = .pink
    var body: some View {
        ZStack {
            //background
            bgColor
                .ignoresSafeArea()
            
            //content
            contentLayer
        }
    }
    
    var contentLayer: some View {
        VStack {
            Text("Title")
                .font(.largeTitle)
            Button {
                buttonPressed()
            } label: {
                Text("PRESS ME")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.black)
                    .cornerRadius(10)
            }

        }
    }
    
    
    func buttonPressed() {
        bgColor = .yellow
    }
    
}

struct ExtractedFunctionsBC_Previews: PreviewProvider {
    static var previews: some View {
        ExtractedFunctionsBC()
    }
}
