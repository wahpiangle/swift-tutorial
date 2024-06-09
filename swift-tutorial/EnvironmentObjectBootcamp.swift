//
//  EnvironmentObjectBootcamp.swift
//  swift-tutorial
//
//  Created by Tan Quan Ming on 09/06/2024.
//

import SwiftUI

class EnvironmentViewModel: ObservableObject{
    @Published var data: [String] = []
    
    init(){
        fetchData()
    }
    
    func fetchData(){
        self.data.append(contentsOf: ["Macbook", "iMac", "Mac Mini"])
    }
}

struct EnvironmentObjectBootcamp: View {
    
    @StateObject var environmentViewModel: EnvironmentViewModel = EnvironmentViewModel()
    
    var body: some View {
        NavigationView{
            List{
                ForEach(environmentViewModel.data, id: \.self){ item in 
                    // \.self is the unique identifier
                    NavigationLink(
                        destination: DetailView(selectedItem: item),
                        label: {
                            Text(item)
                        }
                    )
                }
            }
        }
        .environmentObject(environmentViewModel)
        // using environment object, only need to declare in subview when needed
        // this is similar to the context api in react
    }
}

struct DetailView: View {
    
    let selectedItem: String
    
    var body: some View {
        ZStack{
            Color.orange.ignoresSafeArea()
            NavigationLink(
                destination: FinalView(),
                label: {
                    Text(selectedItem)
                        .font(.largeTitle)
                        .bold()
                        .foregroundColor(.white)
                }
            )
            
        }
    }
}

struct FinalView: View {
    
    @EnvironmentObject var environmentViewModel: EnvironmentViewModel
    
    var body: some View{
        ZStack{
            LinearGradient(gradient: Gradient(colors: [.red, .blue]), startPoint: .topLeading, endPoint: .bottomTrailing).ignoresSafeArea()
            ScrollView{
                VStack(spacing: 20){
                    ForEach(environmentViewModel.data, id: \.self){ item in
                        Text(item)
                            .font(.title)
                            .bold()
                            .foregroundColor(.white)
                    }
                }
            }
        }
    }
}

#Preview {
    EnvironmentObjectBootcamp()
}
