//
//  TestView.swift
//  BootCamp
//
//  Created by Tagir Aiupov on 2022-02-18.
//

import SwiftUI

struct TestView: View {
    @State private var showProgressView: Bool = false
    var body: some View {
        ZStack {
            VStack {
                
                Button {
                    showProgressView.toggle()
                } label: {
                    Text("Show")
                        .font(.largeTitle)
                }

                
                List(0 ..< 100) { item in
                    Text("Hello, World! \(item)")
                }
                
            }
            .blur(radius: showProgressView ? 1 : 0)
            
            if showProgressView {
                ZStack {
                    Color.white
                        .opacity(0.3)
                        .ignoresSafeArea()
                    ProgressView()
                }
            }
            
        }
    }
}

struct TestView_Previews: PreviewProvider {
    static var previews: some View {
        TestView()
    }
}
