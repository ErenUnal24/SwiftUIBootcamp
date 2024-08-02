//
//  ImageBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Eren on 1.08.2024.
//

import SwiftUI

struct ImageBootcamp: View {
    var body: some View {
        Image("facebook")
            //.renderingMode(.original)
            .resizable()
            //.aspectRatio(contentMode: .fill)
            .scaledToFit()
            .frame(width: 300, height: 200)
            //.clipped()
//            .clipShape(
//                //Circle()
//                //RoundedRectangle(cornerRadius: 25.0)
//                Ellipse()
//            )
            
    }
}

#Preview {
    ImageBootcamp()
}
