//
//  CatalogView.swift
//  MySpar_TestTask
//
//  Created by Кирилл Раменский on 12.08.2023.
//

import SwiftUI

struct CatalogView: View {
    
    @StateObject private var viewModel = CatalogViewModel()
    @State private var columns: [GridItem] = [
        GridItem(.flexible(), spacing: Metric.cellIndent),
        GridItem(.flexible(), spacing: Metric.cellIndent)
    ]
    
    let selectedTab: (Int) -> Void
    
    var body: some View {
        VStack {
            ZStack(alignment: .top) {
                Image("img_1")
                    .resizable()
                
                HStack {
                    Button {
                        selectedTab(0)
                    } label: {
                        Image(systemName: "arrow.left")
                            .font(.title2)
                            .fontWeight(.semibold)
                            .frame(width: 40, height: 40)
                            .foregroundColor(.defaultGreenColor)
                            .background(.white)
                            .cornerRadius(20)
                            .overlay(
                                RoundedRectangle(cornerRadius: 20)
                                    .stroke(Color.defaultGreenColor, lineWidth: 0)
                            )
                    }
                    
                    Spacer()
                    
                    Button {
                        /// - Action
                    } label: {
                        Image(systemName: "magnifyingglass")
                            .font(.title2)
                            .fontWeight(.semibold)
                            .frame(width: 40, height: 40)
                            .foregroundColor(.defaultGreenColor)
                            .background(.white)
                            .cornerRadius(20)
                            .overlay(
                                RoundedRectangle(cornerRadius: 20)
                                    .stroke(Color.defaultGreenColor, lineWidth: 0)
                            )
                    }
                }
                .padding(.horizontal)
                .padding(.vertical)
            }
            .frame(height: Metric.topContainerHeight)
            
            Spacer()
                .frame(height: 10)
            
            VStack(spacing: 15) {
                HStack {
                    Text("Каталог")
                        .font(.title)
                        .fontWeight(.bold)
                    
                    Spacer()
                }
                .padding(.horizontal)
                .padding(.top, 15)
                
                ScrollView(showsIndicators: false) {
                    LazyVGrid(columns: columns, spacing: Metric.cellIndent) {
                        ForEach(viewModel.sections) { section in
                            ZStack(alignment: .topLeading) {
                                Image(section.imageTitle)
                                    .resizable()
                                
                                Text(section.title)
                                    .font(.subheadline)
                                    .fontWeight(.semibold)
                                    .padding(.top, 10)
                                    .padding(.horizontal, 10)
                            }
                            .frame(width: Metric.sizeCell, height: Metric.sizeCell)
                            .cornerRadius(Metric.cellCornerRadius)
                        }
                    }
                    .padding(.vertical)
                    .padding(.horizontal, Metric.cellIndent)
                }
            }
            .background(
                TopRoundedMask(radius: 20)
                    .fill(.white)
            )
            .frame(width: .infinity)
            .padding(.top, -30)
        }
    }
}

extension CatalogView {
    
    // MARK: - Metric
    enum Metric {
        static let topContainerHeight: CGFloat = UIScreen.main.bounds.size.height * 0.2
        static let bottomContainerHeight: CGFloat = UIScreen.main.bounds.size.height * 0.8
        static let cellIndent: CGFloat = 15
        static let cellCornerRadius: CGFloat = 15
        static let sizeCell: CGFloat = (UIScreen.main.bounds.size.width - cellIndent * 3) / 2
    }
}
