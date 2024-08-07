//
//  ListBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Eren on 4.08.2024.
//

import SwiftUI

struct ListBootcamp: View {
    
    @State var isExpanded: Bool = true
    @State var isExpanded2: Bool = true

    
    @State var fruits: [String] = [
        "apple", "orange", "banana", "peach"
    ]
    
    @State var veggies: [String] = [
        "tomota", "patato", "carrot"
    ]
    
    var body: some View {
        NavigationStack {
            List {
                Section(isExpanded: $isExpanded) {
                    ForEach(fruits, id: \.self) { fruit in
                        Text(fruit.capitalized)
                    }
                    .onDelete(perform: delete)
                    .onMove(perform: move)
                } header: {
                    Text("Fruits")
                }
                
                Section(isExpanded: $isExpanded2) {
                    ForEach(veggies, id: \.self) { veggie in
                        Text(veggie.capitalized)
                    }
                } header: {
                    Text("Veggies")
                }

            }
            .listStyle(SidebarListStyle())
            .navigationTitle("Grocery List")
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    EditButton()
                }
                ToolbarItem(placement: .topBarTrailing) {
                    addButton
                }
            }
        }
    }
    
    var addButton: some View {
        Button("Add") {
            fruits.append("Coconut")
        }
    }
    
    func delete(indexSet: IndexSet) {
        fruits.remove(atOffsets: indexSet)

    }
    
    func move(indices: IndexSet,newOffset: Int ) {
        fruits.move(fromOffsets: indices, toOffset: newOffset)
    }
    
    func add() {
        fruits.append("Coconut")
    }
}

#Preview {
    ListBootcamp()
}
