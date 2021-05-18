//
//  GeometryReaderBC.swift
//  BootCamp
//
//  Created by Тагир Аюпов on 2021-04-20.
//

import SwiftUI

struct GeometryReaderBC: View {
    
    
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false, content: {
            HStack {
                ForEach(0..<20) { index in
                    GeometryReader { geometry in
                        RoundedRectangle(cornerRadius: 25.0)
                            .rotation3DEffect(
                                Angle(degrees: getPercent(geo: geometry) * 15),
                                axis: (x: 0.0, y: 1.0, z: 0.0))
                        
                        
                    }
                    .frame(width: 300, height: 200)
                    .padding()
                }
            }
        })
    }
    
    func getPercent(geo: GeometryProxy) -> Double {
        let maxDistance = UIScreen.main.bounds.width / 2
        let currentX = geo.frame(in: .global).midX
        return Double(1 - (currentX / maxDistance))
    }
    
}

struct GeometryReaderBC_Previews: PreviewProvider {
    static var previews: some View {
        GeometryReaderBC()
    }
}
