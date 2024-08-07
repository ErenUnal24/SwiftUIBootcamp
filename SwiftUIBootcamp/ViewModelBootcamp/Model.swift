//
//  Model.swift
//  SwiftUIBootcamp
//
//  Created by Eren on 6.08.2024.
//

import Foundation

struct FruitModel: Identifiable {
    let id: String = UUID().uuidString
    let name: String
    let count: Int
}
