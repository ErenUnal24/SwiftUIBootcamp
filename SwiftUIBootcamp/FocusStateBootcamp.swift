//
//  FocusStateBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Eren on 8.08.2024.
//

import SwiftUI

struct FocusStateBootcamp: View {
    
    @FocusState private var usernameInFocus: Bool
    @State private var username: String = ""
    
    @FocusState private var passwordInFocus: Bool
    @State private var password: String = ""
    
    var body: some View {
        VStack(spacing: 30) {
            TextField("Add your name here...", text: $username)
                .focused($usernameInFocus)
                .padding(.leading)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.gray.brightness(0.3))
                .clipShape(RoundedRectangle(cornerRadius: 10))
            
            TextField("Add your password here...", text: $password)
                .focused($passwordInFocus)
                .padding(.leading)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.gray.brightness(0.3))
                .clipShape(RoundedRectangle(cornerRadius: 10))
            
            Button("Sign Up 🚀") {
                let usernameIsValid = !username.isEmpty
                let passwordIsValid = !password.isEmpty
                if usernameIsValid && passwordIsValid {
                    print("Sign Up")
                } else if usernameIsValid {
                    usernameInFocus = false
                    passwordInFocus = true
                }else {
                    usernameInFocus = true
                    passwordInFocus = false
                }
            }
            
//            Button("Toggle Focus State") {
//                usernameInFocus.toggle()
//            }
        }
        .padding(40)
//        .onAppear {
//            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
//                self.usernameInFocus = true
//            }
//        }
    }
}

#Preview {
    FocusStateBootcamp()
}
