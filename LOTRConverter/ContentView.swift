//
//  ContentView.swift
//  LOTRConverter
//
//  Created by Omar Bustanji on 29/08/2025.
//

import SwiftUI

struct ContentView: View {
    @State var showExchangeScreen = false
    @State var leftText = ""
    @State var rightText = ""
    
    var body: some View {
        ZStack {
            Image(.background).resizable().ignoresSafeArea()
            
            VStack {
                Image(.prancingpony).resizable().scaledToFit().frame(height: 200)
                VStack {
                    HStack {
                        VStack{
                            HStack {
                                Image(.silverpiece)
                                    .resizable()
                                    .scaledToFit()
                                    .frame(height: 48)
                                Text ("Silver Price").foregroundStyle(.white)
                            }
                            TextField("Ammount", text: $leftText)
                                .textFieldStyle(.roundedBorder)
                        }
                        Image(systemName: "equal")
                            .foregroundColor(.white)
                            .font(.largeTitle).symbolEffect(.pulse)
                        VStack{
                            HStack {
                                Image(.goldpiece)
                                    .resizable()
                                    .scaledToFit()
                                    .frame(height: 48)
                                Text ("goldpiece").foregroundStyle(.white)
                            }
                            TextField("Ammount", text: $rightText)
                                .textFieldStyle(.roundedBorder)
                                .multilineTextAlignment(.trailing)
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
            .border(.blue)
        }
    }
}

#Preview {
    ContentView()
}
