//
//  ButtonsBC.swift
//  BootCamp
//
//  Created by Tagir Aiupov on 2022-01-18.
//

import SwiftUI

struct ButtonsBC: View {
    
    @State var title: String = "This is my title"
    
    var body: some View {
        VStack(spacing: 20) {
            Text(title)
            Button("Press me") {
                self.title = "Button 1 was pressed"
            }
            .tint(.cyan)
            
            Button {
                self.title = "Button 2 was pressed"
            } label: {
                Text("save".uppercased())
                    .font(.headline)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .padding()
                    .padding(.horizontal, 20)
                    .background(
                        Color.blue
                            .cornerRadius(10)
                            .shadow(radius: 10))
            }
            
            Button {
                self.title = "Button 2 was pressed"
            } label: {
                Circle()
                    .fill(Color.white)
                    .frame(width: 75, height: 75)
                    .shadow(radius: 10)
                    .overlay(
                        Image(systemName: "heart.fill")
                            .font(.largeTitle)
                            .foregroundColor(Color.red)
                    )
            }
            
            Button {
                self.title = "Button 3 was pressed"
            } label: {
                Text("Finish".uppercased())
                    .font(.caption)
                    .bold()
                    .foregroundColor(Color.gray)
                    .padding()
                    .padding(.horizontal, 10)
                    .background(
                        Capsule()
                            .stroke(Color.gray, lineWidth: 2.0)
                    )
            }

        }
    }
}

struct ButtonsBC_Previews: PreviewProvider {
    static var previews: some View {
        ButtonsBC()
    }
}
