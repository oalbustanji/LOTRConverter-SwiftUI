//
//  Currency.swift
//  LOTRConverter
//
//  Created by Omar Bustanji on 30/08/2025.
//
import SwiftUI
enum Currency: Double , CaseIterable, Identifiable{
    
    var id: Double { rawValue } 
    
    case copperPenny = 6400
    case silverPenny = 64
    case silverPiece = 16
    case goldPenny  = 4
    case goldPiece = 1
    
    var image: ImageResource {
        switch self {
        case .copperPenny :
            return .copperpenny
        case .silverPenny :
            return .silverpenny
        case .silverPiece :
            return .silverpiece
        case .goldPenny :
            return .goldpenny
        case .goldPiece:
            return .goldpiece
       
        }
    }
    var name: String {
        switch self {
        case .copperPenny:
            return "Copper Penny"
        case .silverPenny:
            return "Silver Penny"
        case .silverPiece:
            return "Silver Piece"
        case .goldPenny:
            return "Gold Penny"
        case .goldPiece:
            return "Gold Piece"
        }
    }
    func convert(_ amount: String, to currency: Currency) -> String {
        guard let doubleAmount = Double(amount) else {return ""}
        let convertedValue = (doubleAmount / self.rawValue) * currency.rawValue
        return String(format: "%.2f", convertedValue)
    }
}
