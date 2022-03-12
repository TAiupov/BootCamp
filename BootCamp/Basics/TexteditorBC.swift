//
//  TexteditorBC.swift
//  BootCamp
//
//  Created by Tagir Aiupov on 2022-02-20.
//

import SwiftUI

struct TexteditorBC: View {
    @State private var textEditorText: String = ""
    @State private var dataArray: [String] = []
    var body: some View {
        NavigationView {
            VStack {
                TextEditor(text: $textEditorText)
                    .padding()
                    .frame(height: 250)
                    .background(Color.green)
                    .colorMultiply(Color.purple)
                Button {
                    saveText()
                } label: {
                    Text("Save")
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(validateText() ? Color.blue.opacity(0.9) : Color.gray.opacity(0.3))
                        .cornerRadius(10)
                        .font(.headline)
                        .foregroundColor(.white)
                }
                Spacer()

            }
            .padding()
            
            .navigationTitle("TextFieldBC")
        }
        
    }
    
    func validateText() -> Bool {
        guard textEditorText.count >= 3 else { return false }
        return true
    }
    
    func saveText() {
        if validateText() {
            dataArray.append(textEditorText)
            textEditorText = ""
        }
    }
}

struct TexteditorBC_Previews: PreviewProvider {
    static var previews: some View {
        TexteditorBC()
    }
}
