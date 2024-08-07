//
//  ButtonBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Eren on 2.08.2024.
//

import SwiftUI

struct ButtonsBootcamp: View {
    
   @State var title: String = "This is my title"
    
    var body: some View {
        VStack(spacing: 20) {
            Text(title)
            
            Button("Press") {
                self.title = "Button was pressed"
            }
            .foregroundStyle(.red)
            
            Button {
                self.title = "Button #2 was pressed"
            } label: {
                Text("Save".uppercased())
                    .font(.headline)
                    .foregroundStyle(.white)
                    .padding()
                    .padding(.horizontal, 20)
                    .background(
                        Color.blue
                            //.clipShape(RoundedRectangle(cornerSize: CGSize(width: 50, height: 30)))
                            //.clipShape(Rectangle(), style: /*@START_MENU_TOKEN@*/FillStyle()/*@END_MENU_TOKEN@*/)
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                            .shadow(radius: 10)
                    )
            }
            
            Button {
                self.title = "Button #3"
            } label: {
                Circle()
                    .fill(Color.white)
                    .frame(width: 75, height: 75)
                    .shadow(radius: 15)
                    .overlay(
                        Image(systemName: "heart.fill")
                            .font(.largeTitle)
                            .foregroundStyle(Color.red)
                    )
            }

            Button  {
                self.title = "Button #4"
            } label: {
                Text("Finish".uppercased())
                    .font(.caption)
                    .bold()
                    .foregroundStyle(.gray)
                    .padding()
                    .padding(.horizontal)
                    .background(
                        Capsule()
                            .stroke(Color.gray,lineWidth: 2.0)
                    )
            }

            

        }
    }
}

#Preview {
    ButtonsBootcamp()
}
