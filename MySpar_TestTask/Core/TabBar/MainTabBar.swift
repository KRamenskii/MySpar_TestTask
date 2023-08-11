//
//  MainTabBar.swift
//  MySpar_TestTask
//
//  Created by Кирилл Раменский on 11.08.2023.
//

import SwiftUI

struct MainTabBar: View {
    var body: some View {
        TabView {
            Text("Главная")
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Главная")
                }
            
            Text("Каталог")
                .tabItem {
                    Image(systemName: "square.grid.2x2")
                    Text("Каталог")
                }
            
            BasketView()
                .tabItem {
                    Image(systemName: "cart")
                    Text("Корзина")
                }
            
            Text("Профиль")
                .tabItem {
                    Image(systemName: "person")
                    Text("Профиль")
                }
        }
        .accentColor(Color.defaultGreenColor)
    }
}
