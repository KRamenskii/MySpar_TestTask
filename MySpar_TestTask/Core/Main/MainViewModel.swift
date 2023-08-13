//
//  MainViewModel.swift
//  MySpar_TestTask
//
//  Created by Кирилл Раменский on 12.08.2023.
//

import Foundation

final class MainViewModel: ObservableObject {
    
    @Published var options = MainOptions.options
    @Published var banners = Banner.banners
    @Published var specialCards = SpecialCard.cards
    @Published var products = ProductCard.products
}
