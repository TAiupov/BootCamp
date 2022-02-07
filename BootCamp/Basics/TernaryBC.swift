//
//  TernaryBC.swift
//  BootCamp
//
//  Created by Tagir Aiupov on 2022-02-06.
//

import SwiftUI

struct TernaryBC: View {
    @State var isStartingState: Bool = false
    var body: some View {
        VStack {
            Button("Button: \(isStartingState.description)") {
                withAnimation {
                    isStartingState.toggle()
                }
            }
            
            RoundedRectangle(cornerRadius: isStartingState ? 25 : 10)
                .fill(isStartingState ? Color.red : Color.blue)
                .frame(width: isStartingState ? 200:250, height: isStartingState ? 100:150)
            Spacer()
        }
    }
}

struct TernaryBC_Previews: PreviewProvider {
    static var previews: some View {
        TernaryBC()
    }
}
