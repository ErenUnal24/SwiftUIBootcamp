//
//  AppStorageBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Eren on 7.08.2024.
//

import SwiftUI

struct AppStorageBootcamp: View {
    
    @AppStorage("name") var currentUserName: String?
    
    var body: some View {
        VStack(spacing: 20) {
            Text(currentUserName ?? "Add Name Here")
            
            
            if let name = currentUserName {
                Text(name)
            }
            Button("Save".uppercased()) {
                let name = "Eren"
                currentUserName = name
            }
            
        }
    }
}

#Preview {
    AppStorageBootcamp()
}
