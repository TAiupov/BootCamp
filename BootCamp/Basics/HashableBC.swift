//
//  HashableBC.swift
//  BootCamp
//
//  Created by Тагир Аюпов on 2021-04-21.
//

import SwiftUI

struct MyCustomModel: Hashable {
    let title: String
    func hash(into hasher: inout Hasher) {
        hasher.combine(title)
    }
}

struct HashableBC: View {
    
    let data: [MyCustomModel] = [
        MyCustomModel(title: "One"),
        MyCustomModel(title: "Two"),
        MyCustomModel(title: "Three"),
        MyCustomModel(title: "Four"),
        MyCustomModel(title: "Five")
        
    ]
    
    var body: some View {
        VStack {
            ForEach(data, id: \.self) { item in
                Text(item.title)
            }
        }
    }
}

struct HashableBC_Previews: PreviewProvider {
    static var previews: some View {
        HashableBC()
    }
}
