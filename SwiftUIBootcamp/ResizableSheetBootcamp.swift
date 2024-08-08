//
//  ResizableSheetBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Eren on 8.08.2024.
//

import SwiftUI

struct ResizableSheetBootcamp: View {
    
    @State private var showSheet: Bool = false
    @State private var detents: PresentationDetent = .large
    
    var body: some View {
        Button("Click Me!") {
            showSheet.toggle()
        }
        .sheet(isPresented: $showSheet) {
            MyNextView(detents: $detents)
//                .presentationDetents([.medium, .large])
//                presentationDragIndicator(.hidden)
//                .interactiveDismissDisabled()
                //.presentationDetents([.height(500)])
                //.presentationDetents([.fraction(0.15)])
                //.presentationDetents([.fraction(0.1), .height(300), .medium, .large])
                .presentationDetents([.medium, .large], selection: $detents)
        }
        .onAppear {
            showSheet = true
        }
    }
}

struct MyNextView: View {
    
    @Binding var detents: PresentationDetent
    
    var body: some View {
        ZStack {
            Color.red.ignoresSafeArea()
            
            VStack(spacing: 20) {
                Button("Medium") {
                    detents = .medium
                }
                Button("Large") {
                    detents = .large
                }
            }
        }
    }
}



#Preview {
    ResizableSheetBootcamp()
}
