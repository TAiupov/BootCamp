//
//  TextfieldBC.swift
//  BootCamp
//
//  Created by Tagir Aiupov on 2022-02-20.
//

import SwiftUI

struct TextfieldBC: View {
    @State var textfieldText: String = ""
    @State var dataArray: [String] = []
    var body: some View {
        NavigationView {
            VStack {
                TextField("Enter text here...", text: $textfieldText)
                    .padding()
                    .background(Color.gray.opacity(0.3).cornerRadius(10))
                    .font(.headline)
                    .foregroundColor(.red)
                
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
                .disabled(!validateText())
                
                ForEach(dataArray, id: \.self) { text in
                    Text(text)
                }
                
                Spacer()
                
            }
            .padding()
            .navigationTitle("TextFieldBC")
        }
    }
    
    func validateText() -> Bool {
        guard textfieldText.count >= 3 else { return false }
        return true
    }
    
    func saveText() {
        if validateText() {
            dataArray.append(textfieldText)
            textfieldText = ""
        }
    }
}

struct TextfieldBC_Previews: PreviewProvider {
    static var previews: some View {
        TextfieldBC()
    }
}
