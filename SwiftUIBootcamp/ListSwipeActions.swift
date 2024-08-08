//
//  ListSwipeActions.swift
//  SwiftUIBootcamp
//
//  Created by Eren on 8.08.2024.
//

import SwiftUI



struct ListSwipeActions: View {
    
    
    @State var fruits: [String] = [
        "apple", "orange", "banana", "peach"
    ]
    
    
    
    var body: some View {
        List {
            ForEach(fruits, id: \.self) {
                Text($0.capitalized)
            }
//            .onDelete(perform: { indexSet in
//                delete(indexSet: indexSet)
//            })
            .swipeActions(edge: .trailing,
                          allowsFullSwipe: true) {
                Button("Archive") {
                    
                }
                .tint(.green)
                Button("Save") {
                    
                }
                .tint(.blue)
                Button("Junk") {
                    
                }
                .tint(.black)
            }
            .swipeActions(edge: .leading,
                        allowsFullSwipe: true) {
                Button("Share") {
                    
                }
                .tint(.yellow)
                
            }
        }
    }
    
    func delete(indexSet: IndexSet) {
        
    }
}

#Preview {
    ListSwipeActions()
}
