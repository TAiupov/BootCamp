//
//  ToggleBC.swift
//  BootCamp
//
//  Created by Tagir Aiupov on 2022-03-12.
//

import SwiftUI

struct ToggleBC: View {
    @State private var toggleIsOn: Bool = false
    var body: some View {
        VStack {
            
            HStack {
                Text("Status:")
                Text(toggleIsOn ? "Online" : "Offline")
            }
            
            Toggle(isOn: $toggleIsOn) {
                Text("Change status")
            }
            .toggleStyle(SwitchToggleStyle(tint: .red))
            .padding()
            
            Spacer()
        }
        .padding(.horizontal, 50)
    }
}

struct ToggleBC_Previews: PreviewProvider {
    static var previews: some View {
        ToggleBC()
    }
}
