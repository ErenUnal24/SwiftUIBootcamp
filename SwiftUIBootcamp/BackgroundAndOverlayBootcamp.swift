//
//  BackgroundAndOverlayBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Eren on 1.08.2024.
//

import SwiftUI

struct BackgroundAndOverlayBootcamp: View {
    var body: some View {
        Image(systemName: "heart.fill")
            .font(.system(size: 40))
            .foregroundStyle(Color.white)
            .background(
                Circle()
                    .fill(
                        LinearGradient(
                            gradient: Gradient(colors: [Color(#colorLiteral(red: 0.3236978054, green: 0.1063579395, blue: 0.574860394, alpha: 1)), Color(#colorLiteral(red: 0.8446564078, green: 0.5145705342, blue: 1, alpha: 1))]),
                            startPoint: .topLeading,
                            endPoint: .bottomTrailing)
            )
            .frame(width: 100, height: 100)
            .shadow(color: Color(#colorLiteral(red: 0.3236978054, green: 0.1063579395, blue: 0.574860394, alpha: 1)), radius: 10, x: 0.0, y: 10)
            .overlay(
                Circle()
                    .fill(Color.blue)
                    .frame(width: 35, height: 35)
                    .overlay(
                        Text("5")
                            .font(.headline)
                            .foregroundStyle(.white)
                    )
                    .shadow(color: Color(#colorLiteral(red: 0.3236978054, green: 0.1063579395, blue: 0.574860394, alpha: 1)), radius: 10, x: 5, y: 5)
                , alignment: .bottomTrailing)
            )
    }
}

#Preview {
    BackgroundAndOverlayBootcamp()
}
