//
//  StateBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Eren on 2.08.2024.
//

import SwiftUI

struct StateBootcamp: View {
    
    @State var backgroundColor : Color = Color.green
    @State var myTitle : String = "My Title"
    @State var count : Int = 0
    
    
    var body: some View {
        ZStack {
            //background
            backgroundColor
                .ignoresSafeArea()
            
            //content
            VStack(spacing: 20) {
                Text(myTitle)
                    .font(.title)
                Text("Count: \(count)")
                    .font(.headline)
                    .underline()
                
                HStack(spacing: 20) {
                    Button("Button 1") {
                        backgroundColor = .red
                        myTitle = "Button #1 was pressed!"
                        count += 1
                    }
                    
                    Button("Button 2") {
                        backgroundColor = .purple
                        myTitle = "Button #2 was pressed!"
                        count -= 1
                    }
                }
            }
            .foregroundStyle(.white)
            
        }
    }
}

#Preview {
    StateBootcamp()
}
