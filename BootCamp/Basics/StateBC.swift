//
//  StateBC.swift
//  BootCamp
//
//  Created by Tagir Aiupov on 2022-01-23.
//

import SwiftUI

struct StateBC: View {
    @State var bgColor: Color = .green
    @State var myTitle: String = "Title"
    @State var count: Int = 1
    
    var body: some View {
        ZStack {
            //background
            bgColor
                .ignoresSafeArea()
            
            //content
            VStack(spacing: 20) {
                Text(myTitle)
                    .font(.title)
                Text("Count: \(count)")
                    .font(.headline)
                    .underline()
                
                HStack(spacing: 20) {
                    Button("Button 1") {
                        bgColor = .purple
                        count += 1
                        myTitle = "Button 1 was pressed"
                    }
                    
                    Button("Button 2") {
                        bgColor = .cyan
                        count -= 1
                        myTitle = "Button 2 was pressed"
                    }
                }
            }
            .foregroundColor(.white)
        }
    }
}

struct StateBC_Previews: PreviewProvider {
    static var previews: some View {
        StateBC()
    }
}
