//
//  ContentView.swift
//  swift-tutorial
//
//  Created by Tan Quan Ming on 06/06/2024.
//

import SwiftUI

struct ContentView: View {
    @State var playerCard = "card9"
    @State var cpuCard = "card2"
    @State var playerScore = 0
    @State var cpuScore = 0
    
    var body: some View {
        VStack(
            content:{
                Image("logo")
                Spacer()
                HStack(
                    spacing:40,
                    content:{
                        Image(playerCard)
                        Image(cpuCard)
                    })
                Spacer()
                DealButton(playerCard: $playerCard, playerScore: $playerScore, cpuCard: $cpuCard, cpuScore: $cpuScore)
                Spacer()
                HStack(
                    content:{
                        VStack(
                            spacing: 10,
                            content: {
                                Text("Player")
                                    .foregroundStyle(.white)
                                    .font(.system(size:20)
                                    )
                                Text(String(playerScore))
                                    .foregroundStyle(.white)
                                    .font(.system(size:30)
                                    )
                            })
                        Spacer()
                        VStack(
                            spacing: 10,
                            content: {
                                Text("CPU")
                                    .foregroundStyle(.white)
                                    .font(.system(size:20)
                                    )
                                Text(String(cpuScore))
                                    .foregroundStyle(.white)
                                    .font(.system(size:30)
                                    )
                            })
                        
                    }
                )
            }
        ).background(
            Image("background")
        ).padding(30)
    }
}

#Preview {
    ContentView()
        .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
}
