//
//  MultiSheetBC.swift
//  BootCamp
//
//  Created by Тагир Аюпов on 2021-04-20.
//

import SwiftUI

struct RandomModel: Identifiable {
    let id = UUID().uuidString
    let title: String
    
}

struct MultiSheetBC: View {
    @State var selectedModel: RandomModel = RandomModel(title: "Start title")
    @State var showSheet: Bool = false
    var body: some View {
        VStack {
            Button("Button 1") {
                selectedModel = RandomModel(title: "ONE")
                showSheet.toggle()
            }
            
            Button("Button 2") {
                selectedModel = RandomModel(title: "TWO")
                showSheet.toggle()
            }
        }
        .sheet(isPresented: $showSheet, content: {
            NextSheet(selectedmodel: $selectedModel)
        })
    }
}

struct NextSheet: View {
    @Binding var selectedmodel: RandomModel
    var body: some View {
        Text(selectedmodel.title)
    }
}

struct MultiSheetBC_Previews: PreviewProvider {
    static var previews: some View {
        MultiSheetBC()
    }
}
