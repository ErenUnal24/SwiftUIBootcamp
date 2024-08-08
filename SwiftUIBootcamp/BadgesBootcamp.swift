//
//  BadgesBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Eren on 8.08.2024.
//

// List
// TabView

import SwiftUI

struct BadgesBootcamp: View {
    var body: some View {
        List {
            Text("Hello, Wordl!")
                .badge("New Items")
            Text("Hello, Wordl!")
            Text("Hello, Wordl!")
            Text("Hello, Wordl!")

        }
        
        
//        TabView {
//            Color.red
//                .tabItem {
//                    Image(systemName: "heart.fill")
//                    Text("Hello")
//                }
//                .badge(5)
//            
//            Color.green
//                .tabItem {
//                    Image(systemName: "heart.fill")
//                    Text("Hello")
//                }
//            
//            Color.blue
//                .tabItem {
//                    Image(systemName: "heart.fill")
//                    Text("Hello")
//                }
//        }
    }
}

#Preview {
    BadgesBootcamp()
}
