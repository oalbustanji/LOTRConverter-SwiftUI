//
//  ExchangeInfo.swift
//  LOTRConverter
//
//  Created by Omar Bustanji on 29/08/2025.
//

import SwiftUI

struct ExchangeInfo: View {
    var body: some View {
        ZStack {
            Image(.parchment).resizable().ignoresSafeArea()
            VStack {
                Text("Exchange Rates").font(.largeTitle).tracking(3)
                Text(
                    "Here at the Prancing Pony, we are happy to offer you a place where you can exchange all the known currencies in the entire world except one. We used to take Brandy Bucks, but after finding out that it was a person instead of a piece of paper, we realized it had no value to us. Below is a simple guide to our currency exchange rates:"
                )
                .font(.title3).padding()
                ExchangeRate(
                    title: "1 Gold Piece = Gold Pennies",
                    leftImage: .goldpiece,
                    rightImage: .goldpenny
                )
                ExchangeRate(
                    title: "1 Gold penniy = 4 silver Piecies",
                    leftImage: .goldpenny,
                    rightImage: .silverpiece
                )
                ExchangeRate (
                    title: "1 Silver Piece = Silver Pennies",
                    leftImage: .silverpiece,
                    rightImage: .silverpenny
                )
                Button("Done") {
                    
                }
                .buttonStyle(.borderedProminent)
                .tint(.brown.mix(with: .black, by: 0.2))
                .padding()
                .font(.title2)
                .foregroundStyle(.white)
            }
            .foregroundStyle(.black)
        }
        .background(.brown)
        
    }
}

#Preview {
    ExchangeInfo()
}
