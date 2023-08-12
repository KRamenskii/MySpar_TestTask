//
//  MainTabBar.swift
//  MySpar_TestTask
//
//  Created by Кирилл Раменский on 11.08.2023.
//

import SwiftUI

struct MainTabBar: View {
    
    @State private var isProfilePresented = false
    @State private var selectedTab = 0
    
    var body: some View {
        TabView(selection: $selectedTab) {
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
            .tag(0)
            
            VStack {
                CatalogView() { selectedTab in
                    self.selectedTab = selectedTab
                }
                    .ignoresSafeArea()
                
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
            .tag(1)
            
            VStack {
                BasketView() { selectedTab in
                    self.selectedTab = selectedTab
                }
                
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
            .tag(2)
            
            VStack {
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
            .tag(3)
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                    isProfilePresented = true
                }
            }
        }
        .onAppear() {
            UITabBar.appearance().backgroundColor = UIColor(Color.tabBarColor)
        }
        .accentColor(Color.defaultGreenColor)
        .fullScreenCover(isPresented: $isProfilePresented) {
            ProfileView(isPresented: $isProfilePresented, selectedTab: $selectedTab)
        }
    }
}
