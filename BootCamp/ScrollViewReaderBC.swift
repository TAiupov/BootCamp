//
//  ScrollViewReaderBC.swift
//  BootCamp
//
//  Created by Тагир Аюпов on 2021-04-20.
//

import SwiftUI

struct ScrollViewReaderBC: View {
    @State private var numberTo: String = ""
    @State private var scrollTo: Int = 0
    var body: some View {
        VStack {
            
            TextField("Enter #", text: $numberTo)
                .frame(height: 50)
                .cornerRadius(20)
                .border(Color.gray)
                .padding(.horizontal)
                .keyboardType(.numberPad)
            
            Button("Go to #") {
                
                    if let index = Int(numberTo) {
                        scrollTo = index
                    
                    
                    
                }
            }
            .padding(.bottom)
            
            ScrollView {
                
                ScrollViewReader { proxy in
                    
                    
                    
                    ForEach(0..<50) { index in
                        Text("Item # \(index)")
                            .font(.headline)
                            .frame(height: 100)
                            .frame(maxWidth: .infinity)
                            .background(Color.white)
                            .cornerRadius(10)
                            .shadow(radius: 10)
                            .padding()
                            .id(index)
                        
                    }
                    .onChange(of: scrollTo, perform: { value in
                        
                        withAnimation {
                            proxy.scrollTo(scrollTo, anchor: .center)
                        }
                    })
                }
                
                
            }
        }
    }
}

struct ScrollViewReaderBC_Previews: PreviewProvider {
    static var previews: some View {
        ScrollViewReaderBC()
    }
}
