//
//  ConditionalBC.swift
//  BootCamp
//
//  Created by Tagir Aiupov on 2022-02-06.
//

import SwiftUI

struct ConditionalBC: View {
    
    @State var showCircle: Bool = false
    @State var showRectangle: Bool = false
    @State var isLoading: Bool = true
    var body: some View {
        VStack(spacing: 20) {
            
            if isLoading {
                ProgressView()
                    .onTapGesture {
                        isLoading = false
                    }
            } else {
                
                Button("Show Circle: \(showCircle.description)") {
                    showCircle.toggle()
                }
                Button("Show Rectangle: \(showRectangle.description)") {
                    showRectangle.toggle()
                }
                
                if showCircle {
                    Circle()
                        .frame(width: 100, height: 100)
                }
                if showRectangle {
                    Rectangle()
                        .frame(width: 100, height: 100)
                }
                if showCircle && showRectangle {
                    RoundedRectangle(cornerRadius: 25)
                        .frame(width: 200, height: 100)
                }
                
                Spacer()
            }
        }
    }
}

struct ConditionalBC_Previews: PreviewProvider {
    static var previews: some View {
        ConditionalBC()
    }
}
