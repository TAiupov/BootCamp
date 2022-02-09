//
//  SheetsBC.swift
//  BootCamp
//
//  Created by Tagir Aiupov on 2022-02-08.
//

import SwiftUI

struct SheetsBC: View {
    @State var showSheet: Bool = false
    var body: some View {
        ZStack {
            Color.green
                .edgesIgnoringSafeArea(.all)
            
            Button {
                showSheet.toggle()
            } label: {
                Text("Button")
                    .foregroundColor(.green)
                    .font(.headline)
                    .padding()
                    .background(Color.blue.cornerRadius(10))
            }
        }
        .fullScreenCover(isPresented: $showSheet, content: {
            SecondScreen()
        })
//        .sheet(isPresented: $showSheet, content: {
//            SecondScreen()
//          DO NOT ADD CONDITIONAL LOGIC
//        })
    }
}

struct SheetsBC_Previews: PreviewProvider {
    static var previews: some View {
        SheetsBC()
//        SecondScreen()
    }
}

struct SecondScreen: View {
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        ZStack(alignment: .topLeading) {
            Color.red
                .edgesIgnoringSafeArea(.all)
            
            Button {
                presentationMode.wrappedValue.dismiss()
            } label: {
                Image(systemName: "xmark")
                    .foregroundColor(.white)
                    .font(.headline)
                    .padding(20)
            }
        }
    }
}
