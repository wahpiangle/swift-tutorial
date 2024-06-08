//
//  ViewModelBootcamp.swift
//  swift-tutorial
//
//  Created by Tan Quan Ming on 08/06/2024.
//

import SwiftUI

struct ViewModelBootcamp: View {
    
    //StateObject is the same as ObservableObject but persists if view refreshes
    // @StateObject -> for INIT / Creation
    // @ObservableObject -> Subviews
    @StateObject var fruitViewModel:FruitViewModel = FruitViewModel()
    
    var body: some View {
        NavigationView{
            List{
                if fruitViewModel.isLoading{
                    ProgressView()
                }else{
                    ForEach(fruitViewModel.fruits){ fruit in
                        HStack{
                            Text("\(fruit.count)")
                                .foregroundStyle(.red)
                            Text(fruit.name)
                                .font(.headline)
                                .bold()
                        }
                    }
                    .onDelete(perform: fruitViewModel.deleteFruit)
                }
            }
            .listStyle(GroupedListStyle())
            .navigationBarItems(
                trailing: NavigationLink(
                    destination: RandomScreen(fruitViewModel: fruitViewModel),
                    label:{
                        Image(systemName: "arrow.clockwise")
                    }
                    )
            )
        }
    }
}

struct RandomScreen: View{
    @Environment(\.presentationMode) var presentationMode
    @ObservedObject var fruitViewModel:FruitViewModel
    
    var body: some View{
        ZStack{
            Color.red
            Text("Second Screen")
                .font(.largeTitle)
                .bold()
                .foregroundColor(.white)
                .onTapGesture {
                    presentationMode.wrappedValue.dismiss()
                }
        }
    }
}

#Preview {
    ViewModelBootcamp()
}
