//
//  ContextMenuBC.swift
//  BootCamp
//
//  Created by Tagir Aiupov on 2022-02-20.
//

import SwiftUI

struct ContextMenuBC: View {
    @State var bgColor: Color = .purple
    var body: some View {
        VStack(alignment: .leading, spacing: 10.0) {
            Image(systemName: "house.fill")
                .font(.title)
            Text("Sample Text")
                .font(.headline)
            Text("How to use Context Menu")
                .font(.subheadline)
        }
        .foregroundColor(.white)
        .padding(30)
        .background(bgColor)
        .cornerRadius(30)
        .contextMenu {
            Button {
                bgColor = .yellow
            } label: {
                Label("Share post", systemImage: "flame.fill")
            }
            
            
            Button {
                bgColor = .red
            } label: {
                Text("Report")
            }
            
            Button {
                bgColor = .green
            } label: {
                HStack {
                    Text("Like")
                    Image(systemName: "heart.fill")
                }
            }
        }
    }
}

struct ContextMenuBC_Previews: PreviewProvider {
    static var previews: some View {
        ContextMenuBC()
    }
}
