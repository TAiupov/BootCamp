//
//  NavigationViewBC.swift
//  BootCamp
//
//  Created by Tagir Aiupov on 2022-02-19.
//

import SwiftUI

struct NavigationViewBC: View {
    var body: some View {
        NavigationView {
            ScrollView {
                
                NavigationLink("Hello Wrld") {
                    OtherNewScreen()
                }
                
                Text("Hello, World!")
                Text("Hello, World!")
                Text("Hello, World!")
            }
            .navigationTitle("NavigationViewBC")
//            .navigationBarTitleDisplayMode(.automatic)
//            .navigationBarHidden(true)
        }
    }
}

struct OtherNewScreen: View {
    @Environment(\.presentationMode) var pm
    var body: some View {
        ZStack {
            Color.purple.ignoresSafeArea()
                .navigationTitle("Purple screen")
                .navigationBarHidden(true)
            
            VStack {
                Button {
                    pm.wrappedValue.dismiss()
                } label: {
                    Text("Back Button")
                }

                NavigationLink("Hello Wrld") {
                    Text("3rd screen")
                }
            }
            
            
        }
    }
}

struct NavigationViewBC_Previews: PreviewProvider {
    static var previews: some View {
        NavigationViewBC()
    }
}
