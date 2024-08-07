//
//  OtherView.swift
//  SwiftUIBootcamp
//
//  Created by Eren on 6.08.2024.
//

import SwiftUI

struct OtherView: View {
    
    @ObservedObject var fruitViewModel: FruitViewModel
    
    var body: some View {
        ZStack {
            Color.green.ignoresSafeArea()
            
            VStack {
                ForEach(fruitViewModel.fruitArray) { fruit in
                    Text(fruit.name)
                        .foregroundStyle(.white)
                        .font(.headline)
                }
            }
        }
    }
}


