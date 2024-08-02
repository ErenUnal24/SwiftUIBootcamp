//
//  ShapesBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Eren on 1.08.2024.
//

import SwiftUI

struct ShapesBootcamp: View {
    var body: some View {
       // Circle()
            //.fill(Color.green)
            //.foregroundStyle(.blue)
            //.stroke(Color.red)
            //.stroke(Color.blue, lineWidth: 5)
            //.stroke(Color.orange,style: StrokeStyle(lineWidth: 30, lineCap:   .round  ,  dash: [30]))
//            .trim(from: 0.2, to: 1.0)
//            .stroke(Color.purple, lineWidth: 50)
        Ellipse()
            .frame(width: 200, height: 100)
        Capsule()
            .frame(width: 20, height: 200)
        
        
    }
}

#Preview {
    ShapesBootcamp()
}
