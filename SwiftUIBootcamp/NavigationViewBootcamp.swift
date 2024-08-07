//
//  NavigationViewBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Eren on 4.08.2024.
//

import SwiftUI

struct NavigationViewBootcamp: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                
                NavigationLink("Hello World",
                               destination: myOtherScreen())
                
                Text("Hello, World!")
                Text("Hello, World!")
                Text("Hello, World!")
            }
            .navigationTitle("All Inboxes")
            //.navigationBarTitleDisplayMode(.automatic)
            //.toolbar(.hidden)
            .toolbar {
                ToolbarItemGroup(placement: .topBarLeading) {
                    HStack {
                        Image(systemName: "person.fill")
                        Image(systemName: "flame.fill")
                    }
                }
                
                ToolbarItemGroup(placement: .topBarTrailing) {
                    NavigationLink(destination: myOtherScreen()) {
                        Image(systemName: "gear")
                            .foregroundColor(.red)
                    }
                }
                
            }
        }
    }
}

struct myOtherScreen: View {
    
    @Environment(\.dismiss) var dismissSecondScreen
    
    var body: some View {
        ZStack {
            Color.green.ignoresSafeArea()
                .navigationTitle("Green Screen!")
                .toolbar(.hidden)
            
            VStack {
                NavigationLink("Click Here", destination: Text("Third Screen"))
                Button("Back Button") {
                    dismissSecondScreen()
                }
            }
        }
    }
}

#Preview {
    NavigationViewBootcamp()
}
