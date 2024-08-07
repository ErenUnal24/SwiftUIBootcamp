//
//  PickerBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Eren on 6.08.2024.
//


    // DEPRECATED O YÜZDEN TAM ÇÖZEMEDİM

import SwiftUI

struct PickerBootcamp: View {
    
    @State var selection: String = "Most Recent"
    let filterOptions: [String] = [
        "Most Recent", "Most Populer", "Most Liked"
    ]
    
    var body: some View {
        List {
            //            Picker(
            //                selection: $selection,
            //                label:
            //                    HStack {
            //                        Text("Filter: \(selection)")
            //
            //                    }
            //                    .font(.headline)
            //                    .foregroundStyle(.white)
            //                    .padding()
            //                    .padding(.horizontal)
            //                    .background(Color.blue)
            //                    .clipShape(RoundedRectangle(cornerRadius: 10))
            //                    .shadow(color: Color.blue.opacity(0.3), radius: 10, x: 0, y: 10)
            //                ,
            //                content:  {
            //                    ForEach(filterOptions, id: \.self) { option in
            //                        Text(option)
            //                            .tag(option)
            //
            //                    }
            //
            //                })
            //            .pickerStyle(MenuPickerStyle())
            
            
            Picker(selection: $selection) {
                ForEach(filterOptions, id: \.self) { option in
                    Text(option)
                        .tag(option)
                }
            } label: {
                HStack {
                    Text("Filter \(selection)")
                }
                .font(.headline)
                .foregroundStyle(.white)
                .padding()
                .padding(.horizontal)
                .background(Color.blue)
                .clipShape(RoundedRectangle(cornerRadius: 10))
            .shadow(color: Color.blue.opacity(0.3), radius: 10, x: 0, y: 10)
                
            }
            .background(.green.opacity(0.1))
            .pickerStyle(.inline)
        }
        
//        VStack {
//            HStack {
//                Text("Age: \(selection)")
//            }
//            
//            
//            Picker(
//                selection: $selection,
//                label: Text("Picker"),
//                content: {
//                    ForEach(18..<100) { number in
//                        Text("\(number)")
//                            .font(.headline)
//                            .foregroundStyle(.red)
//                            .tag("\(number)")
//                    }
//            })
//            .pickerStyle(.wheel)
//            //.background(Color.gray.opacity(0.3))
//        }
        
    }
}

#Preview {
    PickerBootcamp()
}
