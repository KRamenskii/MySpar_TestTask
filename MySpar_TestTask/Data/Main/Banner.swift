//
//  Banner.swift
//  MySpar_TestTask
//
//  Created by Кирилл Раменский on 12.08.2023.
//

import Foundation

struct Banner: Identifiable {
    var id: String?
    let imageTitle: String
}

extension Banner {
    
    static let banners: [Banner] = [
        Banner(id: "1", imageTitle: "img_14"),
        Banner(id: "2", imageTitle: "img_15"),
        Banner(id: "3", imageTitle: "img_16"),
        Banner(id: "4", imageTitle: "img_17"),
        Banner(id: "5", imageTitle: "img_18")
    ]
}
