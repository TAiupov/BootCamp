//
//  CoreDataBC.swift
//  BootCamp
//
//  Created by Тагир Аюпов on 2021-04-21.
//

import SwiftUI
import CoreData

class CoreDataVM: ObservableObject {
    let container: NSPersistentContainer
    @Published var savedEntities: [FruitEntity] = []
    
    
    
    init() {
        container = NSPersistentContainer(name: "FruitsContainer")
        container.loadPersistentStores { (description, error) in
            if let error = error {
                print(error.localizedDescription)
            } else {
                print("Success")
            }
        }
        fetchFruits()
    }
    
    func fetchFruits() {
        let request = NSFetchRequest<FruitEntity>(entityName: "FruitEntity")
        
        do {
         savedEntities = try container.viewContext.fetch(request)
        } catch let error {
            print(error.localizedDescription)
        }
    }
    
    func addFruit(text: String) {
        let newFruit = FruitEntity(context: container.viewContext)
        newFruit.name = text
        saveData()
    }
    
    func updateFruit(entity: FruitEntity) {
        let currentName = entity.name ?? ""
        let newName = currentName + "!"
        entity.name = newName
        
        saveData()
    }
    
    func deleteFruit(offset: IndexSet) {
        guard let index = offset.first else { return }
        let entity = savedEntities[index]
        container.viewContext.delete(entity)
        saveData()
    }
    
    func saveData() {
        do {
            try container.viewContext.save()
            fetchFruits()
        } catch let error {
            print(error.localizedDescription)
        }
    }
}


struct CoreDataBC: View {
    @StateObject var vm = CoreDataVM()
    @State var textFieldText: String = ""
    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                TextField("Add fruit here...", text: $textFieldText)
                    .font(.headline)
                    .padding(.horizontal)
                    .frame(height: 50)
                    .background(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
                    .cornerRadius(10)
                    .padding(.horizontal)
                
                Button(action: {
                    guard !textFieldText.isEmpty else { return }
                    vm.addFruit(text: textFieldText)
                    textFieldText = ""
                }, label: {
                    Text("Save")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding(.horizontal)
                        .frame(height: 50)
                        .frame(maxWidth: .infinity)
                        .background(Color(#colorLiteral(red: 1, green: 0.2527923882, blue: 1, alpha: 1)))
                        .cornerRadius(10)
                        .padding(.horizontal)
                })
                
                List {
                    ForEach(vm.savedEntities) { fruit in
                        Text(fruit.name ?? "No name")
                            .onTapGesture {
                                vm.updateFruit(entity: fruit)
                            }
                    }
                    .onDelete(perform: vm.deleteFruit)
                }
            }
            .navigationTitle("Fruits")
        }
    }
}

struct CoreDataBC_Previews: PreviewProvider {
    static var previews: some View {
        CoreDataBC()
    }
}
