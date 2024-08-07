//
//  ExtractedFunctionsBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Eren on 2.08.2024.
//

import SwiftUI

struct ExtractedFunctionsBootcamp: View {
    
    @State var backgroundColor : Color = Color.pink
    @State var buttonPressCounter : Int = 0
    
    
    var body: some View {
        ZStack {
            //background
            backgroundColor
                .ignoresSafeArea(edges: .all)
            
            //content
           contentLayer
        }
    }
    
    var contentLayer : some View {
        VStack {
            Text("Title")
                .font(.largeTitle)
            
            Button {
                buttonPressed()
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
    
    
    func buttonPressed() {
        buttonPressCounter += 1
        if buttonPressCounter % 2 == 1 {
            backgroundColor = .yellow
        } else {
            backgroundColor = .pink
        }
        
    }
}

#Preview {
    ExtractedFunctionsBootcamp()
}
