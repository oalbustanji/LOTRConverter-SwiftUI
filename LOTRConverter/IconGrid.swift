//
//  SelectCurrency.swift
//  LOTRConverter
//
//  Created by Omar Bustanji on 29/08/2025.
//

import SwiftUI

struct IconGrid: View {
    
    @Environment(\.dismiss) var dismiss
    @Binding var selectedCurrency: Currency
    
    var body: some View {
        ZStack {
            LazyVGrid(columns: [GridItem(),GridItem(),GridItem()]) {
                ForEach(Currency.allCases) { currency in
                    if self.selectedCurrency == currency {
                        CurrencyIcon(
                            currencyImage: currency.image,
                            currencyName: currency.name
                        ).shadow(color: .black, radius: 10)
                            .overlay {
                                RoundedRectangle(cornerRadius: 25)
                                    .stroke(lineWidth: 3).opacity(0.5)
                            }
                        
                    }else {
                        CurrencyIcon(
                            currencyImage: currency.image,
                            currencyName: currency.name
                        ).onTapGesture {
                            selectedCurrency = currency
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    @Previewable @State var selectedCurrency: Currency = .silverPenny
    IconGrid( selectedCurrency: $selectedCurrency)
}
        
