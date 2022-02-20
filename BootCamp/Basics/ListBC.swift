//
//  ListBC.swift
//  BootCamp
//
//  Created by Tagir Aiupov on 2022-02-19.
//

import SwiftUI

struct ListBC: View {
    @State var fruits: [String] = ["apples", "bananas", "oranges"]
    @State var veggies: [String] = ["tomatos", "potatos", "carrots"]
    var body: some View {
//
//        List(fruits, id:\.self) { fruit in
//            Text(fruit)
//        }
        
        NavigationView {
            List {
                Section {
                    ForEach(fruits, id:\.self) { fruit in
                        Text(fruit.capitalized)
                    }
                    // Use on the two:
    //                .onDelete { IndexSet in
    //                    delete(at: IndexSet)
    //                }
                    .onDelete(perform: delete)
                    .onMove(perform: move)
                    .listRowBackground(Color.brown)
                } header: {
                    HStack {
                        Text("Fruits")
                        Image(systemName: "flame.fill")
                    }
                    .font(.headline)
                    .foregroundColor(.green)
                }
                
                Section {
                    ForEach(veggies, id:\.self) { veggi in
                        HStack {
                            Text(veggi.capitalized)
                            Image(systemName: "person")
                        }
                    }
                    // Use on the two:
    //                .onDelete { IndexSet in
    //                    delete(at: IndexSet)
    //                }
                    .onDelete(perform: delete)
                    .onMove(perform: move)
                    .listRowBackground(Color.cyan)
                } header: {
                    Text("Veggies")
                }
                .navigationTitle("Grocery List")
            }
            
//            .listStyle(InsetGroupedListStyle())
            
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    EditButton()
                        .tint(.orange)
                }
                
                ToolbarItem(placement: .navigationBarTrailing) {
                    addButton
                        .tint(.purple)
                }
            }
        }
    }
    
    var addButton: some View {
        Button("Add") {
            add()
        }
    }
    
    func delete(at indexSet: IndexSet) {
        fruits.remove(atOffsets: indexSet)
    }
    
    func move(from indices: IndexSet, to newOffset: Int) {
        fruits.move(fromOffsets: indices, toOffset: newOffset)
    }
    
    func add() {
        fruits.append("Peach")
    }
}

struct ListBC_Previews: PreviewProvider {
    static var previews: some View {
        ListBC()
    }
}
