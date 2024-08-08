//
//  ButtonStylesBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Eren on 8.08.2024.
//

import SwiftUI

struct ButtonStylesBootcamp: View {
    var body: some View {
        VStack {
            
            Button("Button Title") {
                
            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            //.buttonStyle(.plain)
            .buttonStyle(.borderedProminent)
            .controlSize(.large)

            
            Button("Button Title") {
                
            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .controlSize(.regular)
           // .buttonStyle(.bordered)
            .buttonStyle(.borderedProminent)

            
            Button("Button Title") {
                
            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .buttonStyle(.borderedProminent)
            .controlSize(.small)

            
            Button("Button Title") {
                
            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            //.buttonStyle(.borderless)
            .buttonStyle(.borderedProminent)
            .controlSize(.mini)

        }
        .padding()
    }
}

#Preview {
    ButtonStylesBootcamp()
}
