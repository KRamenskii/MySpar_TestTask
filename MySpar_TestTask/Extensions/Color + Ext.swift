//
//  Color + Ext.swift
//  MySpar_TestTask
//
//  Created by Кирилл Раменский on 11.08.2023.
//

import SwiftUI

extension UIColor {
    
    convenience init(hex: Int, alpha: CGFloat = 1) {
        let r = CGFloat((hex & 0xff0000) >> 16) / 255
        let g = CGFloat((hex & 0x00ff00) >> 8) / 255
        let b = CGFloat(hex & 0x0000ff) / 255
        self.init(red: r, green: g, blue: b, alpha: alpha)
    }
}

extension Color {
    
    // MARK: - New Colors For Project
    
    static let defaultGreenColor = Color(UIColor(hex: 0x17B742))
    static let tabBarColor = Color(UIColor(hex: 0xF7F7F7))
    static let saleColor = Color(UIColor(hex: 0xC32324))
}
