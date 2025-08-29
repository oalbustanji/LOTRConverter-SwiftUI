//
//  SelectCurrency.swift
//  LOTRConverter
//
//  Created by Omar Bustanji on 29/08/2025.
//

import SwiftUI

struct CurrencyIcon: View {
    let currencyImage: ImageResource
    let currencyName: String
    
    init(currencyImage: ImageResource, currencyName: String) {
        self.currencyImage = currencyImage
        self.currencyName = currencyName
    }
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ZStack {
            Image(currencyImage).resizable().scaledToFit()
            VStack{
                Spacer()
                Text(currencyName)
                    .font(.caption)
                    .frame(maxWidth: .infinity)
                    .background(.brown.opacity(0.75))
            }
            
        }
        .padding(3)
        .background(.brown)
        .frame(width: 100, height: 100)
        .clipShape(.rect(cornerRadius: 16))
    }
}

