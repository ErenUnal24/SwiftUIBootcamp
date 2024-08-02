//
//  IconsBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Eren on 1.08.2024.
//

import SwiftUI

struct IconsBootcamp: View {
    var body: some View {
        Image(systemName: "books.vertical")
            .resizable()
            //.aspectRatio(contentMode: .fit)
            .scaledToFit()
            //.font(.caption)
            //.font(.system(size: 200))
            .foregroundStyle(.pink)
            .frame(width: 300, height: 300)
            //.clipped()
    }
}

#Preview {
    IconsBootcamp()
}
