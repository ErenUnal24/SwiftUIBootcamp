//
//  ObservableBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Eren on 8.08.2024.
//

import SwiftUI

@Observable class ObservableViewModel {
    
     var title: String = "Some Title"
}


struct ObservableBootcamp: View {
    
    @State private var viewModel = ObservableViewModel()
    
    var body: some View {
        VStack(spacing: 40) {
            Button(viewModel.title) {
                viewModel.title = "new title!"
            }
            SomeChildView(viewModel: viewModel)
            
            SomeThirdView()
        }
        .environment(viewModel)
    }
}

#Preview {
    ObservableBootcamp()
}

struct SomeChildView: View {
    
    @Bindable var viewModel: ObservableViewModel
    
    var body: some View {
        Button(viewModel.title) {
            viewModel.title = "aşlfmsdşlfd"
        }
    }
}


struct SomeThirdView: View {
    
    @Environment(ObservableViewModel.self) var viewModel
    
    var body: some View {
        Button(viewModel.title) {
            viewModel.title = "Third View!"
        }
    }
}
