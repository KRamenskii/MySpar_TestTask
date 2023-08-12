//
//  MainTabBar.swift
//  MySpar_TestTask
//
//  Created by Кирилл Раменский on 11.08.2023.
//

import SwiftUI

struct MainTabBar: View {
    var body: some View {
        VStack {
            TabView {
                VStack {
                    Text("Главная")
                    
                    Spacer()
                    
                    Rectangle()
                        .fill(Color.tabBarColor)
                        .frame(maxWidth: .infinity, maxHeight: 1)
                        .shadow(color: .black, radius: 4, x: 0, y: 0)
                }
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Главная")
                }
                
                VStack {
                    Text("Каталог")
                    
                    Spacer()
                    
                    Rectangle()
                        .fill(Color.tabBarColor)
                        .frame(maxWidth: .infinity, maxHeight: 1)
                        .shadow(color: .black, radius: 4, x: 0, y: 0)
                }
                .tabItem {
                    Image(systemName: "square.grid.2x2")
                    Text("Каталог")
                }
                
                VStack {
                    BasketView()
                    
                    Spacer()
                    
                    Rectangle()
                        .fill(Color.tabBarColor)
                        .frame(maxWidth: .infinity, maxHeight: 1)
                        .shadow(color: .black, radius: 4, x: 0, y: 0)
                }
                .tabItem {
                    Image(systemName: "cart")
                    Text("Корзина")
                }
                
                VStack {
                    Text("Профиль")
                    
                    Spacer()
                    
                    Rectangle()
                        .fill(Color.tabBarColor)
                        .frame(maxWidth: .infinity, maxHeight: 1)
                        .shadow(color: .black, radius: 4, x: 0, y: 0)
                }
                .tabItem {
                    Image(systemName: "person")
                    Text("Профиль")
                }
            }
            .onAppear() {
                UITabBar.appearance().backgroundColor = UIColor(Color.tabBarColor)
            }
            .accentColor(Color.defaultGreenColor)
        }
    }
}
