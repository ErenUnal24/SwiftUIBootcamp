//
//  EnvironmentObjectBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Eren on 7.08.2024.
//

import SwiftUI

// ObservedObject
// StateObject
// EnvironmentObject


class EnvironmentViewModel: ObservableObject {
    
    @Published var dataArray: [String] = []
    
    init() {
        getData()
    }
    
    func getData() {
        self.dataArray.append("iPhone")
        self.dataArray.append("iPad")
        self.dataArray.append(contentsOf: ["iPhone", "iPad", "iMac", "Apple Watch"])
    }
}

struct EnvironmentObjectBootcamp: View {
    
    @StateObject var viewModel: EnvironmentViewModel = EnvironmentViewModel()
    
    var body: some View {
        NavigationView {
            List {
                ForEach(viewModel.dataArray, id: \.self) { item in
                    NavigationLink(
                        destination: DetailView(selectedItem: item)) {
                            Text(item)
                        }
                }
            }
            .navigationTitle("iOS Devices")
        }
        .environmentObject(viewModel)
    }
}

#Preview {
    EnvironmentObjectBootcamp()
    //DetailView(selectedItem: "İphone")
    //FinalView()
}






struct DetailView: View {
    
    let selectedItem: String
    
    var body: some View {
        ZStack {
            //background
            Color.orange.ignoresSafeArea()
            
            //foreground
            NavigationLink(destination: FinalView()) {
                Text(selectedItem)
                    .font(.headline)
                    .foregroundStyle(.orange)
                    .padding()
                    .padding(.horizontal)
                    .background(Color.white)
                    .clipShape(RoundedRectangle(cornerRadius: 30))
            }
            
        }
    }
}


struct FinalView: View {
    
    @EnvironmentObject var viewModel: EnvironmentViewModel
    
    var body: some View {
        ZStack {
            // background
            LinearGradient(
                colors: [Color(#colorLiteral(red: 0.004859850742, green: 0.09608627111, blue: 0.5749928951, alpha: 1)), Color(#colorLiteral(red: 0.07475138456, green: 0.08467323333, blue: 0.2991020977, alpha: 1))],
                startPoint: .topLeading,
                endPoint: .bottomTrailing)
            .ignoresSafeArea()
            
            // foreground
            ScrollView {
                VStack(spacing: 20) {
                    ForEach(viewModel.dataArray, id: \.self) { item in
                        Text(item)
                    }
                }
                .foregroundStyle(.white)
                .font(.largeTitle)
            }
        }
    }
}
