//
//  SheetsBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Eren on 2.08.2024.
//

import SwiftUI

struct SheetsBootcamp: View {
    
    @State var showSheet: Bool = false
    
    var body: some View {
        ZStack {
            Color.green
                .ignoresSafeArea()
            
            Button {
                showSheet.toggle()
            } label: {
                Text("Button")
                    .foregroundStyle(.green)
                    .font(.headline)
                    .padding(20)
                    .background(Color.white)
                    .clipShape(RoundedRectangle(cornerRadius: 8))
            }
//            .fullScreenCover(isPresented: $showSheet, content: {
//                SecondScreen()
//            })
            .sheet(isPresented: $showSheet, content: {
                //DO NOT ADD CONDITIONAL LOGIC
                SecondScreen()
            })

        }
    }
}


struct SecondScreen: View {
    
    @Environment(\.dismiss) var dismissScreen
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            Color.red
                .ignoresSafeArea()
            
            Button {
                dismissScreen()
            } label: {
                Image(systemName: "xmark")
                    .foregroundStyle(.white)
                    .font(.largeTitle)
                    .padding(20)
            }

        }
    }
}

#Preview {
    SheetsBootcamp()
}
