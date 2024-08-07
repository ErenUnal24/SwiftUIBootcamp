//
//  TernaryBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Eren on 2.08.2024.
//

import SwiftUI

struct TernaryBootcamp: View {
    
    @State var isStartingState: Bool = false
    
    var body: some View {
        VStack {
            
            Button("Button: \(isStartingState.description)") {
                isStartingState.toggle()
            }
            
            Text(isStartingState ? "Starting State" : "Ending State")
            
            RoundedRectangle(cornerRadius: isStartingState ? 25.0 : 0)
                .fill(isStartingState == true ? Color.red : Color.blue)
                    .frame(
                        width: isStartingState ? 200 : 50,
                        height: isStartingState ? 400 : 50)
            
            
            
            Spacer()
        }
    }
}

#Preview {
    TernaryBootcamp()
}
