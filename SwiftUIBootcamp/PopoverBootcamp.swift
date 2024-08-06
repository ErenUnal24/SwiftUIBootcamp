//
//  PopoverBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Eren on 2.08.2024.
//

import SwiftUI

struct PopoverBootcamp: View {
    
    @State var showNewScreen: Bool = false
    
    var body: some View {
        ZStack {
            Color.orange
                .ignoresSafeArea()
            
            VStack {
                Button("Button") {
                    showNewScreen.toggle()
                }
                .font(.largeTitle)
                Spacer()
            }
            // 1 - Sheet Method
//            .sheet(isPresented: $showNewScreen, content: {
//                NewScreen()
//            })
            
            // 2 - Transition Method
//            ZStack{
//                if showNewScreen {
//                    NewScreen(showNewScreen: $showNewScreen)
//                        .padding(.top, 100)
//                        .transition(.move(edge: .bottom))
//                        .animation(.spring, value: UUID())
//                }
//            }
//            .zIndex(2.0)
            
            // 3 - Animation Method
            
            NewScreen(showNewScreen: $showNewScreen)
                .padding(.top, 100)
                .offset(y: showNewScreen ? 0 : UIScreen.main.bounds.height)
                .animation(.spring, value: UUID())
            
        }
    }
}

struct NewScreen: View {
    
    @Environment(\.dismiss) var dismissButton
    @Binding var showNewScreen: Bool
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            Color.purple
                .ignoresSafeArea()
            
            Button {
               // dismissButton()
                showNewScreen.toggle()
            } label: {
                Image(systemName: "xmark")
                    .foregroundStyle(Color.white)
                    .font(.largeTitle)
                    .padding(20)
            }

        }
    }
}

#Preview {
    PopoverBootcamp()
    //NewScreen()
}
