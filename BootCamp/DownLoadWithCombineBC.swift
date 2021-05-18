//
//  DownLoadWithCombineBC.swift
//  BootCamp
//
//  Created by Тагир Аюпов on 2021-04-29.
//

import SwiftUI
import Combine

struct PostModel: Codable, Identifiable {
    let userId: Int
    let id: Int
    let title: String
    let body: String
}

class DownLoadWithCombineVM: ObservableObject {
    
    static let instance = DownLoadWithCombineVM()
    @Published var posts: [PostModel] = []
    var cancellables = Set<AnyCancellable>()
    
    init() {
        getData()
    }
    
    func getData() {
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/posts/1") else {return}
        
        URLSession.shared.dataTaskPublisher(for: url)
            .subscribe(on: DispatchQueue.global(qos: .background))
            .receive(on: DispatchQueue.main)
            .tryMap(handleOutput)
            .decode(type: PostModel.self, decoder: JSONDecoder())
            .sink { (completion) in
                switch completion {
                case .finished:
                    print("Finished")
                case .failure(let error):
                    print("Error: \(error.localizedDescription)")
                }
            } receiveValue: { [weak self] (returnedposts) in
                self?.posts.append(returnedposts)
            }
            .store(in: &cancellables)
    }
    
    func handleOutput(output: URLSession.DataTaskPublisher.Output) throws -> Data {
        guard let response = output.response as? HTTPURLResponse,
              response.statusCode >= 200 && response.statusCode < 300 else {
            throw URLError(.badServerResponse)
        }
        return output.data
    }
}


struct DownLoadWithCombineBC: View {
    @StateObject var vm = DownLoadWithCombineVM()
    
    var body: some View {
        List {
            ForEach(vm.posts) { post in
                Text(post.title)
            }
        }
    }
}

struct DownLoadWithCombineBC_Previews: PreviewProvider {
    static var previews: some View {
        DownLoadWithCombineBC()
    }
}
