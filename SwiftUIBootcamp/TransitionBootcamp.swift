//
//  TransitionBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Eren on 2.08.2024.
//

import SwiftUI

struct TransitionBootcamp: View {
    
    @State var showView: Bool = false
    
    var body: some View {
        ZStack(alignment: .bottom) {
            
            VStack{
                Button("Button") {
                    withAnimation(.spring(.bouncy)) {
                        showView.toggle()
                            
                    }
                }
                Spacer()
            }
            
            if showView {
                RoundedRectangle(cornerRadius: 30)
                    .frame(height: UIScreen.main.bounds.height * 0.5)
                    .transition(.move(edge: .bottom))
                    
                    
            }
            
            
        }
        .ignoresSafeArea(.all, edges: .bottom)
    }
}

#Preview {
    TransitionBootcamp()
}
