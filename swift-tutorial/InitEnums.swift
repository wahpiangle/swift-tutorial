//
//  Page2.swift
//  swift-tutorial
//
//  Created by Tan Quan Ming on 07/06/2024.
//

import SwiftUI

struct InitEnums: View {
    let text:String
    let fruit:Fruit
    
    init(text: String) {
        self.text = text
        self.fruit = Fruit.apple
    }
    enum Fruit{
        case apple
        case orange
    }
    
    var body: some View {
        Text(text)
    }
}

#Preview {
    InitEnums(text: "test")
}
