//
//  GradientsBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Eren on 1.08.2024.
//

import SwiftUI

struct GradientsBootcamp: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25.0)
            .fill(
                //Color.red
//                LinearGradient(
//                    gradient: Gradient(colors: [Color(#colorLiteral(red: 0, green: 0.5898008943, blue: 1, alpha: 1)), Color(#colorLiteral(red: 0, green: 0.3285208941, blue: 0.5748849511, alpha: 1))]),
//                    startPoint: .topLeading,
//                    endPoint: .bottom)
//                RadialGradient(
//                    gradient: Gradient(colors: [Color(#colorLiteral(red: 0, green: 0.5898008943, blue: 1, alpha: 1)), Color(#colorLiteral(red: 0, green: 0.3285208941, blue: 0.5748849511, alpha: 1))]),
//                    center: .leading ,
//                    startRadius: 5,
//                    endRadius: 400)
                
                AngularGradient(gradient: Gradient(colors: [Color.red, Color.blue]),
                                center: .topLeading,
                                angle: .degrees(225))
            )
                
                
            .frame(width: 300, height: 200)
    }
}

#Preview {
    GradientsBootcamp()
}
