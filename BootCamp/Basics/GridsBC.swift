//
//  GridsBC.swift
//  BootCamp
//
//  Created by Tagir Aiupov on 2022-01-16.
//

import SwiftUI

struct GridsBC: View {
    let columnsFixed: [GridItem] = [
        GridItem(.fixed(100), spacing: nil, alignment: nil),
        GridItem(.fixed(80), spacing: nil, alignment: nil),
        GridItem(.fixed(60), spacing: nil, alignment: nil),
        GridItem(.fixed(40), spacing: nil, alignment: nil),
        GridItem(.fixed(20), spacing: nil, alignment: nil)
    ]
    
    let columnsFlex: [GridItem] = [
        GridItem(.flexible(), spacing: nil, alignment: nil),
        GridItem(.flexible(), spacing: nil, alignment: nil),
        GridItem(.flexible(), spacing: nil, alignment: nil),
        GridItem(.flexible(), spacing: nil, alignment: nil),
        GridItem(.flexible(), spacing: nil, alignment: nil)
    ]
    
    let columnsAdaptive: [GridItem] = [
        GridItem(.adaptive(minimum: 50, maximum: 300), spacing: nil, alignment: nil),
        GridItem(.adaptive(minimum: 150, maximum: 200), spacing: nil, alignment: nil)
    ]
    
    let columnsInsta: [GridItem] = [
        GridItem(.flexible(), spacing: 6, alignment: nil),
        GridItem(.flexible(), spacing: 6, alignment: nil),
        GridItem(.flexible(), spacing: 6, alignment: nil)
    ]
    
    var body: some View {
        ScrollView {
            
            Rectangle()
                .fill(Color.orange)
                .frame(height: 400)
            
            LazyVGrid(columns: columnsInsta,
                      alignment: .center,
                      spacing: 6,
                      pinnedViews: [.sectionHeaders]) {
                Section {
                    ForEach(0..<20) { index in
                        Rectangle()
                            .fill(Color.blue)
                            .frame(height: 150)
                    }
                } header: {
                    Text("Section 1")
                        .foregroundColor(.white)
                        .font(.title)
                        .frame(maxWidth: .infinity)
                        .background(Color.blue)
                        .padding()
                }
                Section {
                    ForEach(0..<20) { index in
                        Rectangle()
                            .fill(Color.green)
                            .frame(height: 150)
                            
                    }
                } header: {
                    Text("Section 2")
                        .foregroundColor(.white)
                        .font(.title)
                        .frame(maxWidth: .infinity)
                        .background(Color.green)
                        .padding()
                }

                
            }
            
            
        }
    }
}

struct GridsBC_Previews: PreviewProvider {
    static var previews: some View {
        GridsBC()
    }
}
