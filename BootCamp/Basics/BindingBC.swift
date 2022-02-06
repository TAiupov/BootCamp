//
//  BindingBC.swift
//  BootCamp
//
//  Created by Tagir Aiupov on 2022-02-06.
//

import SwiftUI

struct BindingBC: View {
    @State var bgColor: Color = Color.green
    @State var title: String = "Title"
    var body: some View {
        ZStack {
            bgColor.ignoresSafeArea()
            
            VStack {
                Text(title)
                    .foregroundColor(.white)
                ButtonView(bgColor: $bgColor, title: $title)
            }

        }
    }
}

struct ButtonView: View {
    @Binding var bgColor: Color
    @State private var buttonColor: Color = .blue
    @Binding var title: String
    var body: some View {
        Button {
            bgColor = .orange
            buttonColor = .pink
            title = "New title"
        } label: {
            Text(title)
                .foregroundColor(.white)
                .padding()
                .padding(.horizontal)
                .background(buttonColor)
                .cornerRadius(10)
        }
    }
}

struct BindingBC_Previews: PreviewProvider {
    static var previews: some View {
        BindingBC()
    }
}
