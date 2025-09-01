//
//  SelectCurrency.swift
//  LOTRConverter
//
//  Created by Omar Bustanji on 29/08/2025.
//

import SwiftUI

struct SelectCurrency: View {
    
    @Environment(\.dismiss) var dismiss
    @Binding var topSelectedCurrency: Currency
    @Binding var bottomSelectedCurrency: Currency
    var body: some View {
        ZStack {
            Image(.parchment).resizable().ignoresSafeArea()
            
            VStack {
                Text("Select the currency you are starting with:")
                    .fontWeight(.bold)
                IconGrid(selectedCurrency: $topSelectedCurrency)
                
               
                Text("Select the currency you would like convert to:")
                    .fontWeight(.bold)
                IconGrid(selectedCurrency: $bottomSelectedCurrency)
                Button ("Done") {
                    dismiss()
                }
                .buttonStyle(.borderedProminent)
                .tint(.brown.mix(with: .black, by: 0.2))
                .padding()
                .font(.title2)
                .foregroundStyle(.white)
            }
        }
        .background(.brown)
        
    }
}

#Preview {
    @Previewable @State var topSelectedCurrency: Currency = .copperPenny
    @Previewable @State var bottomSelectedCurrency: Currency = .goldPenny
    SelectCurrency(
        topSelectedCurrency: $topSelectedCurrency,
        bottomSelectedCurrency: $bottomSelectedCurrency
    )
}
