//
//  ScrollViewBC.swift
//  BootCamp
//
//  Created by Tagir Aiupov on 2022-01-16.
//

import SwiftUI

struct ScrollViewBC: View {
    var body: some View {
        ScrollView {
            LazyVStack {
                ForEach(0..<100) { index in
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack {
                            
                            ForEach(0..<20) { index in
                                RoundedRectangle(cornerRadius: 25)
                                    .fill(Color.blue)
                                    .frame(width: 200, height: 150)
                                    .shadow(radius: 10)
                                    .padding()
                            }
                            
                            
                        }
                    }
                    
                    
                }
            }
        }
    }
}

struct ScrollViewBC_Previews: PreviewProvider {
    static var previews: some View {
        ScrollViewBC()
    }
}
