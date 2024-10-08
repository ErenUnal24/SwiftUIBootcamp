//
//  ProfileView.swift
//  SwiftUIBootcamp
//
//  Created by Eren on 7.08.2024.
//

import SwiftUI

struct ProfileView: View {
    
    @AppStorage("name") var currentUserName: String?
    @AppStorage("age") var currentUserAge: Int?
    @AppStorage("gender") var currentUserGender: String?
    @AppStorage("signed_in") var currentUserSignedIn: Bool = false
    
    var body: some View {
        VStack(spacing: 20) {
            Image(systemName: "person.circle.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 150, height: 150)
            Text(currentUserName ?? "Your name here")
            Text("This use is \(currentUserAge ?? 0) years old!")
            Text("Their gender is \(currentUserGender ?? "unknown")")
            
            Text("SIGN OUT")
                .foregroundStyle(.white)
                .font(.headline)
                .frame(height: 45)
                .frame(maxWidth: 300)
                .background(Color.black)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .onTapGesture {
                    signOut()
                }
        }
        .frame(width: 350, height: 350)
        .font(.title)
        .foregroundStyle(.purple)
        //.padding()
        .padding(.vertical, 40)
        .background(Color.white)
        .clipShape(RoundedRectangle(cornerRadius: 10))
        .shadow(radius: 10)
        
    }
    
    func signOut() {
        currentUserName   = nil
        currentUserAge    = nil
        currentUserGender = nil
        withAnimation(.spring()) {
            currentUserSignedIn = false

        }
    }
    
}

#Preview {
    ProfileView()
}
