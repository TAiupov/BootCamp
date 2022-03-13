//
//  DarkModeBC.swift
//  BootCamp
//
//  Created by Tagir Aiupov on 2022-03-12.
//

import SwiftUI

struct DarkModeBC: View {
    @Environment(\.colorScheme) var colorScheme
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(spacing: 20) {
                    Text("Primary Color")
                        .foregroundColor(.primary)
                    Text("Secondary Color")
                        .foregroundColor(.secondary)
                    Text("Black Color")
                        .foregroundColor(.black)
                    Text("White Color")
                        .foregroundColor(.white)
                    Text("Red Color")
                        .foregroundColor(.red)
                    Text("Adaptive Color")
                        .foregroundColor(Color("AdaptiveColor"))
                    Text("Locally Adaptive Color")
                        .foregroundColor(colorScheme == .light ? .green : .blue)


                }
            }
            .navigationTitle("DarkModeBC")
        }
    }
}

struct DarkModeBC_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            DarkModeBC()
                .preferredColorScheme(.light)
            DarkModeBC()
                .preferredColorScheme(.dark)
        }
    }
}
