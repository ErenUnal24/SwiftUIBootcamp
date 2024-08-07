//
//  ContextMenuBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Eren on 6.08.2024.
//

import SwiftUI

struct ContextMenuBootcamp: View {
    
    @State var backgroundColor: Color = Color.custom
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10.0) {
            Image(systemName: "house.fill")
                .font(.title)
            Text("Swiftful Thinking")
                .font(.headline)
            Text("How to use Context Menu")
                .font(.subheadline)
        }
        .foregroundStyle(.white)
        .padding(30)
        .background(backgroundColor.clipShape(RoundedRectangle(cornerRadius: 30)))
        .contextMenu(menuItems: {
            Button {
                backgroundColor = .yellow
            } label: {
                Label("Share post", systemImage: "flame.fill")
            }

            Button {
                backgroundColor = .red
            } label: {
                Text("Report post")
            }
            
            Button {
                backgroundColor = .green
            } label: {
                Text("Like post")
                Image(systemName: "heart.fill")
            }
            
        })
        
    }
}

#Preview {
    ContextMenuBootcamp()
}
