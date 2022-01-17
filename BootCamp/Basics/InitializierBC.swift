//
//  InitializierBC.swift
//  BootCamp
//
//  Created by Tagir Aiupov on 2022-01-16.
//

import SwiftUI

struct InitializierBC: View {
    
    let bgColor: Color = Color.red
    
    var body: some View {
        VStack {
            Text("5")
                .font(.largeTitle)
                .foregroundColor(.white)
                .underline()
            Text("Apples")
                .font(.headline)
                .foregroundColor(.white)
        }
        .frame(width: 150, height: 150)
        .background(bgColor)
        .cornerRadius(10)
    }
}

struct InitializierBC_Previews: PreviewProvider {
    static var previews: some View {
        InitializierBC()
    }
}
