//
//  ExtractSubvewsBC.swift
//  BootCamp
//
//  Created by Tagir Aiupov on 2022-01-23.
//

import SwiftUI

struct ExtractSubvewsBC: View {
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            
            items
        }
    }
    
    var myItem: some View {
        VStack {
            Text("1")
            Text("Apples")
        }
        .padding()
        .background(Color.cyan)
        .cornerRadius(10)
    }
    
    var items: some View {
        HStack {
            MyItemSubview(title: "Apples", count: 1, color: .cyan)
            MyItemSubview(title: "Oranges", count: 2, color: .orange)
            MyItemSubview(title: "Bananas", count: 3, color: .yellow)
        }
    }
}

struct ExtractSubvewsBC_Previews: PreviewProvider {
    static var previews: some View {
        ExtractSubvewsBC()
    }
}

struct MyItemSubview: View {
    let title: String
    let count: Int
    let color: Color
    var body: some View {
        VStack {
            Text("\(count)")
            Text(title)
        }
        .padding()
        .background(color)
        .cornerRadius(10)
    }
}
