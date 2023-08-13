//
//  ProductCardView.swift
//  MySpar_TestTask
//
//  Created by Кирилл Раменский on 13.08.2023.
//

import SwiftUI

struct ProductCardView: View {
    
    let product: ProductCard
    
    init(product: ProductCard) {
        self.product = product
    }
    
    var body: some View {
        ZStack(alignment: .top) {
            VStack {
                Image(product.imageTitle)
                    .resizable()

                HStack {
                    VStack(alignment: .leading, spacing: 0) {
                        HStack(spacing: 0) {
                            Text(String(format: "%.2f", product.price))
                                .font(.caption)
                                .fontWeight(.semibold)
                            
                            if let unit = product.units {
                                Image(imageTitleForUnit(unit))
                                    .resizable()
                                    .frame(width: 20, height: 20)
                            }
                        }
                        
                        if let oldPrice = product.oldPrice {
                            Text(String(format: "%.2f", oldPrice))
                                .font(.caption)
                                .foregroundColor(.gray)
                        }
                    }
                    
                    Spacer()
                    
                    Button {
                        /// - Action
                    } label: {
                        VStack {
                            Image(systemName: "basket.fill")
                                .font(.caption)
                                .foregroundColor(.white)
                        }
                        .frame(width: 30, height: 30)
                        .background(Color.defaultGreenColor)
                        .cornerRadius(30 / 2)
                        .overlay {
                            Circle()
                                .stroke(Color.defaultGreenColor, lineWidth: 0)
                        }
                    }
                }
                .padding(.horizontal, 5)
                .padding(.vertical, 5)
            }
            .frame(maxHeight: .infinity)
            
            if let specialOffer = product.specialOffer {
                HStack {
                    HStack {
                        Text(titleForSpecialOffer(specialOffer))
                            .font(.caption2)
                            .foregroundColor(.white)
                            .padding(.vertical, 2)
                            .padding(.leading, 10)
                            .padding(.trailing, 5)
                    }
                    .background(backgroundForSpecialOffer(specialOffer))
                    .clipShape(RoundedCorners(radius: 5, corners: [.topRight, .bottomRight]))
                    
                    Spacer()
                }
            }
            
            if let sale = product.sale {
                VStack {
                    Spacer()
                    HStack {
                        Spacer()
                        
                        Text(String(sale) + "%")
                            .font(.callout)
                            .fontWeight(.bold)
                            .foregroundColor(Color.saleColor)
                            .padding(.horizontal, 2)
                            .padding(.vertical, 2)
                            .background(.white.opacity(0.5))
                            .cornerRadius(7)
                        
                        Spacer()
                            .frame(width: 5)
                    }
                    
                    Spacer()
                        .frame(height: 40)
                }
                
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.white)
        .cornerRadius(15)
        .overlay {
            RoundedRectangle(cornerRadius: 15)
                .stroke(Color.white, lineWidth: 0)
        }
        .shadow(radius: 2)
    }
}

struct ProductCardView_Previews: PreviewProvider {
    static var previews: some View {
        ProductCardView(product: ProductCard.products[2])
    }
}

extension ProductCardView {
    
    func imageTitleForUnit(_ option: Unit) -> String {
        switch option {
        case .grams:
            return "img_37"
        case .kilogram:
            return "img_39"
        case .pieces:
            return "img_38"
        }
    }
    
    func titleForSpecialOffer(_ option: SpecialOffer) -> String {
        switch option {
        case .new:
            return "Новинка"
        case.mapPrice:
            return "Цена по карте"
        case .impactOnPrices:
            return "Удар по ценам"
        case .superPrice:
            return "Супер Цена"
        }
    }
    
    func backgroundForSpecialOffer(_ option: SpecialOffer) -> Color {
        switch option {
        case .new:
            return Color.purple.opacity(0.5)
        case.mapPrice:
            return Color.red.opacity(0.5)
        case .impactOnPrices:
            return Color.green.opacity(0.5)
        case .superPrice:
            return Color.red.opacity(0.5)
        }
    }
}

// MARK: - RoundedCorners

struct RoundedCorners: Shape {
    var radius: CGFloat = .infinity
    var corners: UIRectCorner = .allCorners

    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(
            roundedRect: rect,
            byRoundingCorners: corners,
            cornerRadii: CGSize(width: radius, height: radius)
        )
        return Path(path.cgPath)
    }
}
