//
//  ForEachBC.swift
//  BootCamp
//
//  Created by Tagir Aiupov on 2022-01-16.
//

import SwiftUI

struct ForEachBC: View {
    let data: [String] = ["Hi", "Hello", "Hey everyone"]
    var body: some View {
        VStack {
            ForEach(data.indices) { index in
                Text("\(data[index]) : \(index)")
            }
            
            ForEach(0..<100) { index in
                Circle()
                    .frame(height: 50)
            }
        }
    }
}

struct ForEachBC_Previews: PreviewProvider {
    static var previews: some View {
        ForEachBC()
    }
}
