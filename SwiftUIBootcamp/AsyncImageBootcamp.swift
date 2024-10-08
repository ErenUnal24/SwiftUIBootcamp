//
//  AsyncImageBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Eren on 8.08.2024.
//

import SwiftUI

/*
    case empty          -> No image is loaded.
    case success(Image) -> An image succesfully loaded.
    case failure(Error) -> An image failed to load with an error.
 */

struct AsyncImageBootcamp: View {
    
    let url = URL(string: "https://picsum.photos/400")
    
    var body: some View {
        AsyncImage(url: url) { phase in
            switch phase {
            case .empty:
                ProgressView()
            case .success(let returnedImage):
                returnedImage
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
            case .failure:
                Image(systemName: "questionmark")
                    .font(.headline)
            default:
                Image(systemName: "questionmark")
                    .font(.headline)
            }
        }
//        AsyncImage(url: url, content: { returnedImage in
//            returnedImage
//                .resizable()
//                .scaledToFit()
//                .frame(width: 100, height: 100)
//                .clipShape(RoundedRectangle(cornerRadius: 20))
//        }, placeholder: {
//            ProgressView()
//        })
    }
}

#Preview {
    AsyncImageBootcamp()
}
