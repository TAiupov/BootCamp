//
//  InitializierBC.swift
//  BootCamp
//
//  Created by Tagir Aiupov on 2022-01-16.
//

import SwiftUI

struct InitializierBC: View {
    
    let bgColor: Color
    let count: Int
    let title: String
    
    init(count: Int, fruit: Fruit) {
        self.count = count
        if fruit == .apple {
            self.title = "Apples"
            self.bgColor = .red
        } else {
            self.title = "Oranges"
            self.bgColor = .orange
        }
    }
    
    enum Fruit {
        case apple
        case orange
    }
    
    var body: some View {
        VStack(spacing: 12) {
            Text("\(count)")
                .font(.largeTitle)
                .foregroundColor(.white)
                .underline()
            Text(title)
                .font(.headline)
                .foregroundColor(.white)
        }
        .frame(width: 150, height: 150)
        .background(bgColor)
        .cornerRadius(10)
    }
}

struct InitializierBC_Previews: PreviewProvider {
    static var previews: some View {
        HStack {
            InitializierBC(count: 5, fruit: .apple)
            InitializierBC(count: 10, fruit: .orange)
        }
    }
}
