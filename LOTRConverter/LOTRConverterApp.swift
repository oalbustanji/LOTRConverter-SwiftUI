//
//  LOTRConverterApp.swift
//  LOTRConverter
//
//  Created by Omar Bustanji on 29/08/2025.
//

import SwiftUI

@main
struct LOTRConverterApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(
                leftSelectedCurrency: .copperPenny,
                rightSelectedCurrency: .goldPenny
            )
        }
    }
}
