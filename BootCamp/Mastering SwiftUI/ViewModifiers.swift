//
//  ViewModifiers.swift
//  BootCamp
//
//  Created by Tagir Aiupov on 2021-12-05.
//

import SwiftUI

struct DefaultButtonViewModifier: ViewModifier {
    
    let backgroundColor: Color
    
    func body(content: Content) -> some View {
        content
            .foregroundColor(.white)
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .background(backgroundColor)
            .cornerRadius(10)
            .shadow(radius: 10)
            .padding()
    }
}

extension View {
    func withDefaultButtonFormatting(backgroundColor: Color = .blue) -> some View {
        modifier(DefaultButtonViewModifier(backgroundColor: backgroundColor))
    }
}

struct ViewModifiers: View {
    var body: some View {
        VStack {
            Text("Hello World")
                .font(.headline)
                .withDefaultButtonFormatting(backgroundColor: .blue)
        }
        
        
        
    }
}

struct ViewModifiers_Previews: PreviewProvider {
    static var previews: some View {
        ViewModifiers()
    }
}
