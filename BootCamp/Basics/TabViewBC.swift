//
//  TabViewBC.swift
//  BootCamp
//
//  Created by Tagir Aiupov on 2022-03-12.
//

import SwiftUI

struct TabViewBC: View {
    @State var selectedTab: Int = 2
    
    let icons: [String] = ["heart.fill", "globe", "house.fill", "person.fill"]
    var body: some View {
        
        
        TabView {
            
            ForEach(icons, id: \.self) { icon in
                Image(systemName: icon)
                    .resizable()
                    .scaledToFit()
                    .padding(30)
            }
            
//            RoundedRectangle(cornerRadius: 25)
//                .foregroundColor(.red)
//            RoundedRectangle(cornerRadius: 25)
//                .foregroundColor(.green)
//            RoundedRectangle(cornerRadius: 25)
//                .foregroundColor(.blue)
        }
        .background(content: {
            RadialGradient(colors: [.red, .blue], center: .center, startRadius: 5, endRadius: 300)
        })
        .frame(height: 300)
        .tabViewStyle(.page)
        
        
        
        
        
//        TabView(selection: $selectedTab) {
//
//            HomeView(selectedTab: $selectedTab)
//                .tabItem {
//                    Image(systemName: "house.fill")
//                    Text("Home")
//                }
//                .tag(0)
//
//            Text("Browse tab")
//                .tabItem {
//                    Image(systemName: "globe")
//                    Text("Browse")
//                        .foregroundColor(.black)
//                }
//                .tag(1)
//                .foregroundColor(.black)
//
//            Text("Profile tab")
//                .tabItem {
//                    Image(systemName: "person.fill")
//                    Text("Profile")
//                }
//                .tag(2)
//        }
//        .accentColor(.yellow)
    }
}

struct TabViewBC_Previews: PreviewProvider {
    static var previews: some View {
        TabViewBC()
    }
}

struct HomeView: View {
    @Binding var selectedTab: Int
    var body: some View {
        ZStack {
            Color.red.edgesIgnoringSafeArea(.top)
            
            VStack {
                Text("Home tab")
                    .font(.largeTitle)
                .foregroundColor(.white)
                
                Button {
                    selectedTab = 2
                } label: {
                    Text("Go to Profile")
                        .font(.headline)
                        .foregroundColor(.red)
                        .padding()
                        .padding(.horizontal)
                        .background(Color.white)
                        .cornerRadius(10)
                }

            }
        }
    }
}
