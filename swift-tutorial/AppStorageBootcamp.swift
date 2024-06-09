//
//  AppStorage.swift
//  swift-tutorial
//
//  Created by Tan Quan Ming on 09/06/2024.
//

import SwiftUI

struct AppStorageBootcamp: View {
//    UserDefaults is a key value pair storage, old way
//    @State var currentName: String?
    @AppStorage("age") var savedAge: Int?
    
    var body: some View {
        VStack(spacing:20){
//           Text(currentName ?? "No Name")
            Text("\(savedAge ?? 0)")
            Button("Save Data"){
//                let name = "John Doe"
                savedAge = 30
//                UserDefaults.standard.set(name, forKey: "name")
            }
        }
//        .onAppear{
//            if let savedName = UserDefaults.standard.string(forKey: "name"){
//                currentName = savedName
//            }
//        }
    }
}

#Preview {
    AppStorageBootcamp()
}
