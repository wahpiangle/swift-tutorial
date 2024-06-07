//
//  ForEachPage.swift
//  swift-tutorial
//
//  Created by Tan Quan Ming on 07/06/2024.
//

import SwiftUI

struct ForEachPage: View {
    
    let data: [String] = ["Apple", "Orange", "Banana"]
    
    var body: some View {
        ScrollView{
            VStack{
                ScrollView(.horizontal){
                    HStack(
                        spacing: 20
                    ){
                        ForEach(0..<10){ index in
                            Text("Hi: \(index)")
                                .frame(width: 100, height: 40)
                                .background(Color.red)
                        }
                    }
                }
                ForEach(data.indices){ i in
                    Text("Fruit: \(data[i])")
                        .frame(
                            width: 400,
                            height : 300
                        )
                        .background(Color.mint)
                    
                }
            }
        }
    }
}

#Preview {
    ForEachPage()
}
