//
//  ExchangeRate.swift
//  LOTRConverter
//
//  Created by Omar Bustanji on 30/08/2025.
//
import SwiftUI


struct ExchangeRate: View {
    var title: String
    let leftImage: ImageResource
    let rightImage: ImageResource
    
    init(title: String, leftImage: ImageResource, rightImage:ImageResource ) {
        self.title = title
        self.leftImage = leftImage
        self.rightImage = rightImage
    }
    var body: some View {
        HStack{
            Image(leftImage).resizable().scaledToFit().frame(height: 33)
            Text(title)
            Image(rightImage).resizable()
                .scaledToFit()
                .frame(height: 33)
        }
    }
}
