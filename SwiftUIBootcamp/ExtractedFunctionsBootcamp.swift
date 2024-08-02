//
//  ExtractedFunctionsBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Eren on 2.08.2024.
//

import SwiftUI

struct ExtractedFunctionsBootcamp: View {
    
    @State var backgroundColor : Color = Color.pink
    
    
    var body: some View {
        ZStack {
            //background
            backgroundColor
                .ignoresSafeArea(edges: .all)
            
            //content
            VStack {
                Text("Title")
                    .font(.largeTitle)
                
                Button {
                    backgroundColor = Color.yellow
                } label: {
                    Text("Press Me")
                        .font(.headline)
                        .foregroundStyle(.white)
                        .padding()
                        .background(.black)
                        .clipShape(RoundedRectangle(cornerRadius: 8))
                }

            }
        }
    }
}

#Preview {
    ExtractedFunctionsBootcamp()
}
