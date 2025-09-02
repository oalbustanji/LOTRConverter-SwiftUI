//
//  ContentView.swift
//  LOTRConverter
//
//  Created by Omar Bustanji on 29/08/2025.
//

import SwiftUI
import TipKit

struct ContentView: View {
    @State var showExchangeScreen = false
    @State var showSelectCurrency = false
    @State var leftText = ""
    @State var rightText = ""
    @State var leftSelectedCurrency: Currency
    @State var rightSelectedCurrency: Currency
    @FocusState var leftFocus
    @FocusState var rightFocus
    
    let currencyTip = CurrencyTip()
    
    var body: some View {
        ZStack {
            Image(.background).resizable().ignoresSafeArea()
            
            VStack {
                Image(.prancingpony).resizable().scaledToFit().frame(height: 200)
                VStack {
                    HStack {
                        VStack{
                            HStack {
                                Image(leftSelectedCurrency.image)
                                    .resizable()
                                    .scaledToFit()
                                    .frame(height: 48)
                                Text (leftSelectedCurrency.name)
                                    .foregroundStyle(.white)
                            }.onTapGesture {
                                showSelectCurrency.toggle()
                                currencyTip.invalidate(reason: .actionPerformed)
                            }
                            .onChange(of: leftSelectedCurrency) {
                                rightText = leftSelectedCurrency
                                    .convert(
                                        leftText,
                                        to: rightSelectedCurrency
                                    )
                            }
                            
                            TextField("Ammount", text: $leftText)
                                .textFieldStyle(.roundedBorder)
                                .focused($leftFocus)
                                .onChange(of: leftText) {
                                    if leftFocus {
                                        rightText = leftSelectedCurrency
                                            .convert(
                                                leftText,
                                                to: rightSelectedCurrency
                                            )
                                    }
                                }
                                
                        }
                        Image(systemName: "equal")
                            .foregroundColor(.white)
                            .font(.largeTitle).symbolEffect(.pulse)
                        VStack{
                            HStack {
                                Image(rightSelectedCurrency.image)
                                    .resizable()
                                    .scaledToFit()
                                    .frame(height: 48)
                                Text (rightSelectedCurrency.name)
                                    .foregroundStyle(.white)
                            }.onTapGesture {
                                showSelectCurrency.toggle()
                            }
                            .onChange(of: rightSelectedCurrency) {
                                leftText = rightSelectedCurrency
                                    .convert(
                                        leftText,
                                        to: leftSelectedCurrency
                                    )
                            }
                            .popoverTip(currencyTip, arrowEdge: .bottom)

                            TextField("Ammount", text: $rightText)
                                .textFieldStyle(.roundedBorder)
                                .multilineTextAlignment(.trailing)
                                .focused($rightFocus)
                                .onChange(of: rightText) {
                                    if rightFocus {
                                        leftText = rightSelectedCurrency
                                            .convert(
                                                rightText,
                                                to: leftSelectedCurrency
                                            )
                                    }
                                }
                        }
                    }
                    .padding()
                    .background(.black.opacity(0.5))
                    .clipShape(.capsule)
                    Spacer()
                    HStack {
                        Spacer()
                        Button {
                            showExchangeScreen.toggle()
                        }label: {
                            Image(systemName: "info.circle.fill").foregroundColor(.white)
                                .font(.largeTitle).symbolEffect(.pulse)
                        }
                        .padding(.trailing,16)
                    }
                }
                
            }
            .task {
                try? Tips.configure()
            }
            .border(.blue)
            .sheet(isPresented: $showExchangeScreen) {
                ExchangeInfo()
            }
            .sheet(isPresented: $showSelectCurrency) {
                SelectCurrency(
                    topSelectedCurrency: $leftSelectedCurrency,
                    bottomSelectedCurrency: $rightSelectedCurrency
                )
            }

        }
    }
}

#Preview {
    ContentView(
        leftSelectedCurrency: .copperPenny,
        rightSelectedCurrency: .goldPenny
    )
}
