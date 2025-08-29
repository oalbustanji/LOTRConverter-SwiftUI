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
                HStack{
                    Image(.goldpiece).resizable().scaledToFit().frame(height: 33)
                    Text("1 Gold Piece = 4 Gold Pennies")
                    Image(.goldpenny)
                        .resizable()
                        .scaledToFit()
                        .frame(height: 33)
                }
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
