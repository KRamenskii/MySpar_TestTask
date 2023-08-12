//
//  SpecialCard.swift
//  MySpar_TestTask
//
//  Created by Кирилл Раменский on 12.08.2023.
//

import Foundation

struct SpecialCard: Identifiable {
    var id: String?
    var title: String
    var imageTitle: String
}

extension SpecialCard {
    
    static let cards: [SpecialCard] = [
        SpecialCard(id: "1", title: "Абонемент на кофе", imageTitle: "img_19"),
        SpecialCard(id: "2", title: "Мои скидки", imageTitle: "img_20"),
        SpecialCard(id: "3", title: "Достава за 1 час", imageTitle: "img_21"),
        SpecialCard(id: "4", title: "SPAR Wine", imageTitle: "img_22"),
        SpecialCard(id: "5", title: "Карта в подарок", imageTitle: "img_23"),
        SpecialCard(id: "6", title: "Списки покупок", imageTitle: "img_24"),
        SpecialCard(id: "7", title: "Доставка", imageTitle: "img_25")
    ]
}
