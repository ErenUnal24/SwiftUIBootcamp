//
//  BindingBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Eren on 2.08.2024.
//

import SwiftUI

struct BindingBootcamp: View {
    
    @State var backgroundColor: Color = Color.green
    @State var title: String = "Title"
    
    var body: some View {
        ZStack {
            backgroundColor
                .ignoresSafeArea()
            
            VStack {
                Text(title)
                    .foregroundStyle(.white)
                ButtonView(backgroundColor: $backgroundColor, title: $title)
            }
        }
    }
}


struct ButtonView: View {
    
    @Binding var backgroundColor: Color
    @State var buttonColor: Color = Color.blue
    @Binding var title: String
    @State var counter: Int = 0
    
    var body: some View {
        Button {
            buttonPressed()
        } label: {
            Text("Button")
                .foregroundStyle(.white)
                .padding()
                .padding(.horizontal)
                .background(buttonColor)
                .clipShape(RoundedRectangle(cornerRadius: 10))
        }
    }
    
    func buttonPressed() {
        counter += 1
        if counter % 2 == 1 {
            backgroundColor = Color.orange
            buttonColor = Color.red
            title = "New title here"
            
        } else {
            backgroundColor = Color.green
            buttonColor = Color.blue
            title = "Title"

        }
        
    }
    
}






#Preview {
    BindingBootcamp()
}
