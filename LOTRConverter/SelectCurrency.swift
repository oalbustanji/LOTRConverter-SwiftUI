//
//  SelectCurrency.swift
//  LOTRConverter
//
//  Created by Omar Bustanji on 29/08/2025.
//

import SwiftUI

struct SelectCurrency: View {
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ZStack {
            Image(.parchment).resizable().ignoresSafeArea()
            
            VStack {
                Text("Select the currency you are starting with:")
                    .fontWeight(.bold)
                LazyVGrid(columns: [GridItem(),GridItem(),GridItem()]) {
                    ForEach(Currency.allCases) { currency in
                        CurrencyIcon(
                            currencyImage: currency.image,
                            currencyName: currency.name
                        )
                    }
                }
               
                Text("Select the currency you would like convert to:")
                    .fontWeight(.bold)
            }
        }
        .background(.brown)
        
    }
}

#Preview {
    SelectCurrency()
}
