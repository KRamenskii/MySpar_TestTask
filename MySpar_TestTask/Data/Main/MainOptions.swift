//
//  MainOptions.swift
//  MySpar_TestTask
//
//  Created by Кирилл Раменский on 12.08.2023.
//

import Foundation

struct MainOptions: Identifiable {
    var id: String?
    var title: String
    var imageTitle: String
}

extension MainOptions {
    
    static let options: [MainOptions] = [
        MainOptions(id: "1", title: "Привелегии «Мой SPAR»", imageTitle: "img_13"),
        MainOptions(id: "2", title: "Мы в соцсетях", imageTitle: "img_13"),
        MainOptions(id: "3", title: "100 000 бонусов", imageTitle: "img_13"),
        MainOptions(id: "4", title: "Chip-Chop", imageTitle: "img_13"),
        MainOptions(id: "5", title: "Новинки недели", imageTitle: "img_13"),
        MainOptions(id: "6", title: "Рецепт недели", imageTitle: "img_13"),
        MainOptions(id: "7", title: "Городская роспись", imageTitle: "img_13")
    ]
}
