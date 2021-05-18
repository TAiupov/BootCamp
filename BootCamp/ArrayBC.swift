//
//  ArrayBC.swift
//  BootCamp
//
//  Created by Тагир Аюпов on 2021-04-21.
//

import SwiftUI

struct UserModel: Identifiable {
    let id = UUID().uuidString
    let name: String?
    let point: Int
    let isVerified: Bool
}

class ArrayModificationVM: ObservableObject {
    
    @Published var dataArray: [UserModel] = []
    @Published var filteredArray: [UserModel] = []
    @Published var mappedArray: [String] = []
    init() {
        getUsers()
        updateFilteredArray()
    }
    
    func updateFilteredArray() {
        //sort
        //filteredArray = dataArray.sorted { $0.point > $1.point }
        
        //filter
//        filteredArray = dataArray.filter({  $0.point > 4 && $0.isVerified })
//
//        //map
//        mappedArray = dataArray.map({ $0.name ?? "Error" })
//
//        // compact map
//
//        mappedArray = dataArray.compactMap({ $0.name })
        
        // Combined
        
        mappedArray = dataArray
                        .sorted(by: { $0.point>$1.point })
                        .filter({ $0.isVerified })
                        .compactMap({ $0.name })
        
        
        
        
    }
    
    func getUsers() {
        let user1 = UserModel(name: nil, point: 2, isVerified: true)
        let user2 = UserModel(name: "Mike", point: 3, isVerified: false)
        let user3 = UserModel(name: "Chris", point: 4, isVerified: true)
        let user4 = UserModel(name: nil, point: 5, isVerified: false)
        let user5 = UserModel(name: "Alena", point: 7, isVerified: true)
        let user6 = UserModel(name: "Maria", point: 8, isVerified: true)
        let user7 = UserModel(name: "Thomas", point: 3, isVerified: false)
        let user8 = UserModel(name: "Trinity", point: 23, isVerified: true)
        let user9 = UserModel(name: "Zed", point: 45, isVerified: false)
        let user10 = UserModel(name: "Kai", point: 12, isVerified: true)
        
        self.dataArray.append(contentsOf: [user1, user2, user3,user4,user5,user6,user7,user8,user9,user10])
    }
}

struct ArrayBC: View {
    @StateObject var vm = ArrayModificationVM()
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack(spacing: 20) {
                
                ForEach(vm.mappedArray, id: \.self) { name in
                    VStack(alignment: .leading) {
                        Text(name)
                            .font(.headline)
                    }
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.blue.cornerRadius(10))
                    .padding(.horizontal)
                }
                
//                ForEach(vm.filteredArray) { user in
//                    VStack(alignment: .leading) {
//                        Text(user.name)
//                            .font(.headline)
//                        HStack {
//                            Text("Points: \(user.point)")
//                            Spacer()
//                            if user.isVerified {
//                                Image(systemName: "flame.fill")
//                            }
//                        }
//                    }
//                    .foregroundColor(.white)
//                    .padding()
//                    .background(Color.blue.cornerRadius(10))
//                    .padding(.horizontal)
//                }
            }
        }
    }
}

struct ArrayBC_Previews: PreviewProvider {
    static var previews: some View {
        ArrayBC()
    }
}
