//
//  CustomButton.swift
//  swift-tutorial
//
//  Created by Tan Quan Ming on 07/06/2024.
//

import SwiftUI

struct DealButton: View {
    @Binding var playerCard: String
    @Binding var playerScore: Int
    @Binding var cpuCard: String
    @Binding var cpuScore: Int
    
    func handleDealCard(){
        let playerRand = Int.random(in: 2...14)
        let cpuRand = Int.random(in: 2...14)
        playerCard = "card" + String(playerRand)
        cpuCard = "card" + String(cpuRand)
        if(playerRand > cpuRand){
            playerScore += 1
        }else if (playerRand < cpuRand){
            cpuScore += 1
        }
    }

  var body: some View {
      Button(
          action: handleDealCard,
          label: {
              Image("dealbutton")
          }
      )
  }
}

//#Preview {
//    DealButton(
//        playerCard: "card2", playerScore: 0, cpuCard: "card3", cpuScore: 0
//    )
//}
