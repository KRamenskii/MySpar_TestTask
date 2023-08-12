//
//  CatalogSection.swift
//  MySpar_TestTask
//
//  Created by Кирилл Раменский on 12.08.2023.
//

import Foundation

struct CatalogSection: Identifiable {
    var id: String?
    let title: String
    let imageTitle: String
}

extension CatalogSection {
    
    static let sections: [CatalogSection] = [
        CatalogSection(id: "1", title: "Дачный сезон", imageTitle: "img_2"),
        CatalogSection(id: "2", title: "Пекарня SPAR", imageTitle: "img_3"),
        CatalogSection(id: "3", title: "Готовая еда", imageTitle: "img_4"),
        CatalogSection(id: "4", title: "Колбасы, сосиски, мясные деликотесы", imageTitle: "img_5"),
        CatalogSection(id: "5", title: "Мясо, птица", imageTitle: "img_6"),
        CatalogSection(id: "6", title: "Рыба, морепродукты, икра", imageTitle: "img_7"),
        CatalogSection(id: "7", title: "Вода, соки, напитки", imageTitle: "img_8"),
        CatalogSection(id: "8", title: "Офощи, фрукты, грибы, ягоды, орехи", imageTitle: "img_9"),
        CatalogSection(id: "9", title: "Консервация, варенье, мед", imageTitle: "img_10"),
        CatalogSection(id: "10", title: "Молоко, яйца", imageTitle: "img_11")
    ]
}
