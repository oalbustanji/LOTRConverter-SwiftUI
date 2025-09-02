//
//  CurrencyTip.swift
//  LOTRConverter
//
//  Created by Omar Bustanji on 02/09/2025.
//

import TipKit

struct CurrencyTip: Tip {
    var title: Text = Text ("Change Currency")
    
    var image: Image?
    var message: Text? = Text("you can tap the left or right currency to bring up the select curreny screen")
}
