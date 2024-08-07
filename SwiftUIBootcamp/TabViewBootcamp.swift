//
//  TabViewBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Eren on 6.08.2024.
//

import SwiftUI

struct TabViewBootcamp: View {
    
    @State var selectedTab: Int = 2
    
    let icons: [String] = [
        "heart.fill", "globe", "house.fill", "person.fill"
    ]
    
    var body: some View {
        TabView(content: {
            ForEach(icons, id: \.self) { icon in
                Image(systemName: icon)
                    .resizable()
                    .scaledToFit()
                    .padding(35)
            }
        })
        .frame(height: 300)
        .background(
            RadialGradient(gradient: Gradient(colors: [Color.red, Color.blue]), center: .center, startRadius: 5, endRadius: 300)
        )
        .tabViewStyle(PageTabViewStyle())
//        TabView(selection: $selectedTab) {
//            HomeView(selectTab: $selectedTab)
//                .tabItem {
//                    Image(systemName: "house.fill")
//                    Text("Home")
//                }
//                .tag(0)
//            
//            Text("Browse Tab")
//                .tabItem {
//                    Image(systemName: "globe")
//                    Text("Browse")
//                }
//                .tag(1)
//            
//            Text("Profile Tab")
//                .tabItem {
//                    Image(systemName: "person.fill")
//                    Text("Profile")
//                }
//                .tag(2)
//        }
        .tint(.red)
    }
}

#Preview {
    TabViewBootcamp()
}

//struct HomeView: View {
//    
//    @Binding var selectTab: Int
//    
//    var body: some View {
//        ZStack {
//            Color.red.ignoresSafeArea().padding(.bottom)
//            
//            VStack {
//                Text("Home Tab")
//                    .font(.largeTitle)
//                    .foregroundStyle(.white)
//                
//                
//                Button {
//                    selectTab = 2
//                } label: {
//                    Text("Go to profile")
//                        .font(.headline)
//                        .padding()
//                        .padding(.horizontal)
//                        .background(Color.white)
//                        .clipShape(RoundedRectangle(cornerRadius: 10))
//                }
//            }
//
//        }
//        
//    }
//}
