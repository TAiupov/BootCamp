//
//  OnAppearBC.swift
//  BootCamp
//
//  Created by Tagir Aiupov on 2022-04-09.
//

import SwiftUI

struct OnAppearBC: View {
    
    @State private var myText: String = "Start text."
    @State private var count: Int = 0
    var body: some View {
        NavigationView {
            ScrollView {
                Text(myText)
                LazyVStack {
                    ForEach(0..<50) { _ in
                        RoundedRectangle(cornerRadius: 25)
                            .frame(height: 200)
                            .padding()
                            .onAppear {
                                count += 1
                            }
                    }
                }
            }
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                    myText = "This is the new text!"
                }
            }
            .onDisappear {
                myText = "Ending text."
            }
            .navigationTitle("On Appear BC, \(count)")
        }
    }
}

struct OnAppearBC_Previews: PreviewProvider {
    static var previews: some View {
        OnAppearBC()
    }
}
