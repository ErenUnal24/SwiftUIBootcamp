//
//  AnimationTimingBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Eren on 2.08.2024.
//

import SwiftUI

struct AnimationTimingBootcamp: View {
    
    @State var isAnimating: Bool = false
    let timing: Double = 10.0
    
    var body: some View {
        VStack {
            Button("Button") {
                isAnimating.toggle()
            }
            
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimating ? 350 : 50,
                       height: 100)
                .animation(.spring(response: 0.5,
                                   dampingFraction: 0.7,
                                   blendDuration: 1.0),
                           value: UUID())
//                .animation(Animation.linear(duration: timing), value: UUID())
//                
//            
//            RoundedRectangle(cornerRadius: 20)
//                .frame(width: isAnimating ? 350 : 50,
//                       height: 100)
//                .animation(Animation.easeIn(duration: timing), value: UUID())
//            
//            RoundedRectangle(cornerRadius: 20)
//                .frame(width: isAnimating ? 350 : 50,
//                       height: 100)
//                .animation(Animation.easeInOut(duration: timing), value: UUID())
//            
//            RoundedRectangle(cornerRadius: 20)
//                .frame(width: isAnimating ? 350 : 50,
//                       height: 100)
//                .animation(Animation.easeOut(duration: timing), value:  UUID())
        }
    }
}

#Preview {
    AnimationTimingBootcamp()
}
