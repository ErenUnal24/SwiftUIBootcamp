//
//  TextBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Eren on 1.08.2024.
//

import SwiftUI

struct TextBootcamp: View {
    var body: some View {
        Text("Hello, World! This is the swiftful thinking bootcamp. I am really enjoying this course and learning alot.")
            //.font(.body)
            //.fontWeight(.semibold)
            //.bold()
            //.underline()
//            .underline(pattern: .solid, color: .blue)
//            .italic()
//            .strikethrough()
            //.font(.system(size: 24, weight: .semibold, design: .serif))
            .multilineTextAlignment(.trailing)
            .baselineOffset(30)
            .frame(width:200, height: 200, alignment: .center)
        
    }
}

#Preview {
    TextBootcamp()
}
