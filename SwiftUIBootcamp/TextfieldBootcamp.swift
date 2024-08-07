//
//  TextfieldBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Eren on 6.08.2024.
//

import SwiftUI

struct TextfieldBootcamp: View {
    
    @State var textFieldText: String = ""
    @State var dataArray: [String] = []
    
    
    var body: some View {
        NavigationStack {
            VStack {
                TextField("Type something here...", text: $textFieldText)
                    .padding()
                    .background(Color.gray.opacity(0.3).clipShape(RoundedRectangle(cornerRadius: 10)))
                    .foregroundStyle(.red)
                    .font(.headline)
                
                
                Button {
                    if textIsAppropriate() {
                        saveText()
                    } else {
            
                    }
                } label: {
                    Text("Save".uppercased())
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(textIsAppropriate() ? Color.accentColor : Color.accentColor.opacity(0.5))
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                        .foregroundStyle(Color.white)
                        .font(.headline)
                }
                .disabled(!textIsAppropriate())
                
                ForEach(dataArray, id: \.self) { data in
                    Text(data)
                }
                
                Spacer()
            }
            .padding()
            .navigationTitle("Textfield Bootcamp")
        }
    }
    
    func textIsAppropriate() -> Bool {
        if textFieldText.count >= 3 {
            return true
        }
        return false
    }
    
    func saveText() {
        dataArray.append(textFieldText)
        textFieldText = ""
    }
 
}

#Preview {
    TextfieldBootcamp()
}
