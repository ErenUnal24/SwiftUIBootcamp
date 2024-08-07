//
//  ExtractSubviews.swift
//  SwiftUIBootcamp
//
//  Created by Eren on 2.08.2024.
//

import SwiftUI

struct ExtractSubviews: View {
    var body: some View {
        ZStack{
            Color.blue.ignoresSafeArea()
            
            contentLayer
        }
    }
    
    var contentLayer: some View {
        HStack {
            MyItem(title: "Apples",count: 1,color: .red)
            MyItem(title: "Oranges",count: 10,color: .orange)
            MyItem(title: "Bananas",count: 6,color: .yellow)
        }
    }
    
    
}



#Preview {
    ExtractSubviews()
}



struct MyItem: View {
    
    let title: String
    let count: Int
    let color: Color
    
    var body: some View {
        VStack {
            Text("\(count)")
            Text(title)
        }
        .padding()
        .background(color)
        .clipShape(RoundedRectangle(cornerRadius: 10))
    }
}
