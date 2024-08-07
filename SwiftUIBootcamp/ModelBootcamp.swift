//
//  ModelBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Eren on 6.08.2024.
//

import SwiftUI

struct ModelBootcamp: View {
    
    
    @State var users: [UserModel] = [
        //"Nick", "Eren", "Samantha", "Chris"
        UserModel(displayName: "Eren", userName: "eren123", followerCount: 100, isVerified: true),
        UserModel(displayName: "Nick", userName: "nick1995", followerCount: 55, isVerified: false),
        UserModel(displayName: "Samantha", userName: "ninja", followerCount: 350, isVerified: false),
        UserModel(displayName: "Chris", userName: "chrish2009", followerCount: 88, isVerified: true)
    ]
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(users) { user in
                    HStack(spacing: 15.0) {
                        Circle()
                            .frame(width: 35, height: 35)
                        VStack {
                            Text(user.displayName)
                                .font(.headline)
                            Text("@\(user.userName)")
                                .foregroundStyle(.gray)
                                .font(.caption)
                        }
                        Spacer()
                        if user.isVerified {
                            Image(systemName: "checkmark.seal.fill")
                                .foregroundStyle(.blue)
                        }
                        
                        VStack {
                            Text("\(user.followerCount)")
                                .font(.headline)
                            Text("Followers")
                                .foregroundStyle(.gray)
                                .font(.caption)
                        }
                    }
                    .padding(.vertical, 10)
                }
            }
              
            .listStyle(InsetGroupedListStyle())
            .navigationTitle("Users")
        }
    }
}

#Preview {
    ModelBootcamp()
}



struct UserModel: Identifiable {
    let id: String = UUID().uuidString
    let displayName: String
    let userName: String
    let followerCount: Int
    let isVerified: Bool
}
