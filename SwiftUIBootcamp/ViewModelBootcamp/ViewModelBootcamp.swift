//
//  ViewModelBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Eren on 6.08.2024.
//

import SwiftUI


struct ViewModelBootcamp: View {
    
    //@State var fruitArray: [FruitModel] = []
   @StateObject var fruitViewModel: FruitViewModel = FruitViewModel()
    
    var body: some View {
        NavigationView {
            List {
                if fruitViewModel.isLoading {
                    ProgressView()
                } else {
                    ForEach(fruitViewModel.fruitArray) { fruit in
                        HStack {
                            Text("\(fruit.count)")
                                .foregroundStyle(.red)
                            Text(fruit.name)
                                .font(.headline)
                                .bold()
                        }
                    }
                    .onDelete(perform: fruitViewModel.deleteFruit)
                }
               
            }
            .listStyle(InsetGroupedListStyle())
            .navigationTitle("Fruit List")
            .toolbar {
                
                ToolbarItem(placement: .topBarTrailing) {
                    NavigationLink(destination: OtherView(fruitViewModel: fruitViewModel)) {
                        Image(systemName: "arrow.right")
                    }
                   
                }
            }
            
        }
    }
}

#Preview {
    ViewModelBootcamp()
}








