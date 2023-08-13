//
//  MainView.swift
//  MySpar_TestTask
//
//  Created by Кирилл Раменский on 12.08.2023.
//

import SwiftUI

struct MainView: View {
    
    @StateObject private var viewModel = MainViewModel()
    let rows: [GridItem] = [GridItem(.flexible(), spacing: 15)]
    
    var body: some View {
        VStack {
            NavigationBarView(title: nil, isSearchable: true)
            ScrollView(.vertical, showsIndicators: false) {
                ScrollView(.horizontal, showsIndicators: false) {
                    LazyHGrid(rows: rows, spacing: 15) {
                        ForEach(viewModel.options) { option in
                            VStack {
                                Image(option.imageTitle)
                                    .resizable()
                                    .frame(width: Metric.optionWidth, height: Metric.optionWidth)
                                    .cornerRadius(Metric.optionWidth / 2)
                                    .overlay(
                                        RoundedRectangle(cornerRadius: Metric.optionWidth / 2)
                                            .stroke(Color.defaultGreenColor, lineWidth: 2)
                                    )
                                    .padding(.top, 2)
                                
                                Spacer()
                                    .frame(height: 5)
                                    
                                Text(option.title)
                                    .font(.caption2)
                                    .multilineTextAlignment(.center)
                                    .padding(.top, 0)
                                
                                Spacer()
                            }
                            .frame(width: Metric.optionWidth)
                        }
                    }
                    .padding(.horizontal)
                }
                .padding(.top, 10)
                
                ScrollView(.horizontal, showsIndicators: false) {
                    LazyHGrid(rows: rows, spacing: 15) {
                        ForEach(viewModel.banners) { banner in
                            Image(banner.imageTitle)
                                .resizable()
                                .frame(width: Metric.bannerWidth, height: Metric.bannerHeight)
                                .cornerRadius(15)
                        }
                    }
                    .padding(.horizontal)
                }
                .padding(.top, 10)
                
                VStack {
                    Image("img_36")
                        .resizable()
                }
                .frame(height: 100)
                .cornerRadius(20)
                .overlay(
                    RoundedRectangle(cornerRadius: 20)
                        .stroke(Color.white, lineWidth: 0)
                )
                .padding(.top, 10)
                .padding(.horizontal)
                .shadow(radius: 3)
                
                ScrollView(.horizontal, showsIndicators: false) {
                    LazyHGrid(rows: rows, spacing: 15) {
                        ForEach(viewModel.specialCards) { card in
                            ZStack(alignment: .topLeading) {
                                Image(card.imageTitle)
                                    .resizable()
                                
                                Text(card.title)
                                    .font(.caption)
                                    .fontWeight(.semibold)
                                    .padding(.top, 10)
                                    .padding(.horizontal, 10)
                            }
                            .frame(width: Metric.specialCardWidth, height: Metric.specialCardHeight)
                            .cornerRadius(10)
                        }
                    }
                    .padding(.horizontal)
                }
                .shadow(radius: 3)
                .padding(.top, 10)
                
                VStack(alignment: .leading, spacing: 10) {
                    Text("Рекомендуем")
                        .font(.title3)
                        .fontWeight(.semibold)
                        .padding(.horizontal)
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        LazyHGrid(rows: rows, spacing: 15) {
                            ForEach(viewModel.products) { product in
                                ProductCardView(product: product)
                                    .frame(width: Metric.productCardWidth, height: Metric.productCardHeight)
                            }
                        }
                        .padding(.horizontal)
                        .padding(.vertical, 5)
                    }
                }
                .padding(.top, 10)
                
                VStack(alignment: .leading, spacing: 10) {
                    Text("Сладкое настроение")
                        .font(.title3)
                        .fontWeight(.semibold)
                        .padding(.horizontal)
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        LazyHGrid(rows: rows, spacing: 15) {
                            ForEach(viewModel.products) { product in
                                ProductCardView(product: product)
                                    .frame(width: Metric.productCardWidth, height: Metric.productCardHeight)
                            }
                        }
                        .padding(.horizontal)
                        .padding(.vertical, 5)
                    }
                }
                .padding(.vertical, 10)
            }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}

extension MainView {
    
    enum Metric {
        static let optionWidth: CGFloat = UIScreen.main.bounds.size.width / 5.5
        static let bannerWidth: CGFloat = UIScreen.main.bounds.size.width * 0.8
        static let bannerHeight: CGFloat = specialCardWidth * 1.7
        static let specialCardWidth: CGFloat = UIScreen.main.bounds.size.width / 4
        static let specialCardHeight: CGFloat = specialCardWidth * 1.2
        static let productCardWidth: CGFloat = UIScreen.main.bounds.size.width / 3.3
        static let productCardHeight: CGFloat = productCardWidth * 1.4
    }
}
