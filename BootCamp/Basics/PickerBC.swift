//
//  PickerBC.swift
//  BootCamp
//
//  Created by Tagir Aiupov on 2022-03-12.
//

import SwiftUI

struct PickerBC: View {
    @State private var selection: String = "Most Recent"
    let filterOptions: [String] = ["Most Recent", "Most Popular", "Most Liked"]
    
    init() {
        UISegmentedControl.appearance().selectedSegmentTintColor = UIColor.red
        
        let attributesColors: [NSAttributedString.Key:Any] = [
            .foregroundColor : UIColor.white,
            .backgroundColor : UIColor.red
        ]
        UISegmentedControl.appearance().setTitleTextAttributes(attributesColors, for: .selected)
    }
    
    var body: some View {
  
        Picker(selection: $selection) {
            ForEach(filterOptions.indices) { option in
                Text(filterOptions[option])
                    .tag(filterOptions[option])
            }
        } label: {
            Text(selection)
                .font(.headline)
                .foregroundColor(.white)
                .tint(.white)
            
        }
//        .background(content: {Color.red})
        .pickerStyle(.segmented)
        
        
        
//        Picker(selection: $selection) {
//            ForEach(filterOptions, id: \.self) { option in
//                Text(option)
//                    .tag(option)
//            }
//        } label: {
//            Text("Filter:" + selection)
//                .font(.headline)
//                .foregroundColor(.white)
//                .tint(.white)
//
//        }
//        .padding()
//        .padding(.horizontal)
//        .background(content: {
//            Color.blue.opacity(0.9)
//
//        })
//        .cornerRadius(10)
//        .shadow(color: .blue.opacity(0.3), radius: 10, x: 0, y: 10)
//        .pickerStyle(.menu)
        

        
        
        
//        VStack {
//            HStack {
//                Text("Age:")
//                Text(selection)
//            }
//
//            Picker(selection: $selection) {
//                ForEach(18..<100) { index in
//                    Text("\(index)")
//                        .font(.headline)
//                        .foregroundColor(Color.red)
//                        .tag("\(index)")
//                }
//            } label: {
//                Text("Label")
//            }
//            .background(content: {
//                Color.red.opacity(0.1)
//            })
//            .tint(.red)
//            .pickerStyle(.wheel)
//
//        }
        

    }
}

struct PickerBC_Previews: PreviewProvider {
    static var previews: some View {
        PickerBC()
    }
}
