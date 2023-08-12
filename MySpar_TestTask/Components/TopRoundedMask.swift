//
//  TopRoundedMask.swift
//  MySpar_TestTask
//
//  Created by Кирилл Раменский on 12.08.2023.
//

import SwiftUI

struct TopRoundedMask: InsettableShape {
    var insetAmount: CGFloat = 0
    let radius: CGFloat
    
    func inset(by amount: CGFloat) -> some InsettableShape {
        var roundedMask = self
        roundedMask.insetAmount += amount
        return roundedMask
    }
    
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let radius: CGFloat = radius
        
        path.move(to: CGPoint(x: rect.minX + radius, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.maxX - radius, y: rect.minY))
        path.addArc(
            center: CGPoint(x: rect.maxX - radius, y: rect.minY + radius),
            radius: radius,
            startAngle: Angle(degrees: -90),
            endAngle: Angle(degrees: 0),
            clockwise: false
        )
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.minX, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.minX, y: rect.minY + radius))
        path.addArc(
            center: CGPoint(x: rect.minX + radius, y: rect.minY + radius),
            radius: radius,
            startAngle: Angle(degrees: 180),
            endAngle: Angle(degrees: 90),
            clockwise: false
        )
        path.closeSubpath()
        
        return path
    }
}
