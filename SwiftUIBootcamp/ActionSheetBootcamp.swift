//
//  ActionSheetBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Eren on 6.08.2024.
//


//           CONFIRMATION DIALOG IS THE NEW ACTION SHEET
//      .confirmationDialog("Title", isPresented: $showActionSheet) {
//          content here
//      } message: {
//          Text("")
//      }

import SwiftUI

struct ActionSheetBootcamp: View {
    
    @State private var backgroundColor: Color = .white
    @State private var showActionSheet = false
    
    var body: some View {
        ZStack {
            
            backgroundColor
                .ignoresSafeArea()
            
            Button {
                showActionSheet.toggle()
            } label: {
                Text("Click me")
            }
            .confirmationDialog("This is the title", isPresented: $showActionSheet) {
                Button("Red") { backgroundColor = .red }
                Button("Green") { backgroundColor = .green }
                Button("Yellow") { backgroundColor = .yellow }
                Button("Remove color", role: .destructive) { backgroundColor = .clear }
                Button("Cancel", role: .cancel) { }
            } message: {
                Text("This is the message")
            }
        }
    }
}

struct ActionSheetBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ActionSheetBootcamp()
    }
}
