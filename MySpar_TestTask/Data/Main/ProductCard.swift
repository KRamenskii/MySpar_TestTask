//
//  ProductCard.swift
//  MySpar_TestTask
//
//  Created by Кирилл Раменский on 12.08.2023.
//

import Foundation

struct ProductCard: Identifiable {
    var id: String?
    let imageTitle: String
    let price: Double
    let oldPrice: Double?
    let sale: Int?
    var specialOffer: SpecialOffer?
    let units: Unit?
}

enum SpecialOffer {
    case new
    case superPrice
    case mapPrice
    case impactOnPrices
}

enum Unit {
    case pieces
    case grams
    case kilogram
}

extension ProductCard {
    
    static let products: [ProductCard] = [
        ProductCard(
            id: "1",
            imageTitle: "img_26",
            price: 69.90,
            oldPrice: nil,
            sale: nil,
            specialOffer: nil,
            units: .kilogram
        ),
        
        ProductCard(
            id: "2",
            imageTitle: "img_27",
            price: 135.90,
            oldPrice: nil,
            sale: nil,
            specialOffer: nil,
            units: .grams
        ),
        
        ProductCard(
            id: "3",
            imageTitle: "img_28",
            price: 109.90,
            oldPrice: 149.90,
            sale: 27,
            specialOffer: .impactOnPrices,
            units: .pieces
        ),
        
        ProductCard(
            id: "4",
            imageTitle: "img_29",
            price: 269.90,
            oldPrice: 399.90,
            sale: 33,
            specialOffer: .mapPrice,
            units: .pieces
        ),
        
        ProductCard(
            id: "5",
            imageTitle: "img_30",
            price: 74.90,
            oldPrice: nil,
            sale: nil,
            specialOffer: .superPrice,
            units: .pieces
        ),
        
        ProductCard(
            id: "6",
            imageTitle: "img_31",
            price: 279.90,
            oldPrice: nil,
            sale: nil,
            specialOffer: .new,
            units: .pieces
        ),
        
        ProductCard(
            id: "7",
            imageTitle: "img_32",
            price: 239.90,
            oldPrice: nil,
            sale: nil,
            specialOffer: .new,
            units: .pieces
        ),
        
        ProductCard(
            id: "8",
            imageTitle: "img_33",
            price: 99.90,
            oldPrice: nil,
            sale: nil,
            specialOffer: nil,
            units: .pieces
        ),
        
        ProductCard(
            id: "9",
            imageTitle: "img_34",
            price: 99.90,
            oldPrice: nil,
            sale: nil,
            specialOffer: nil,
            units: .pieces
        ),
        
        ProductCard(
            id: "10",
            imageTitle: "img_35",
            price: 79.90,
            oldPrice: nil,
            sale: nil,
            specialOffer: .new,
            units: .pieces
        )
    ]
}
