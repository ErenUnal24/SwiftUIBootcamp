//
//  NativePopoverBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Eren on 8.08.2024.
//

import SwiftUI

struct NativePopoverBootcamp: View {
    
    @State private var showPopover: Bool = false
    
    var body: some View {
        ZStack {
            Color.gray.ignoresSafeArea()
            
            Button("Click Me") {
                showPopover.toggle()
            }
            .popover(isPresented: $showPopover, content: {
                Text("Hello, subscribers!")
                    .presentationCompactAdaptation(.popover)
            })
        }
    }
}

#Preview {
    NativePopoverBootcamp()
}
