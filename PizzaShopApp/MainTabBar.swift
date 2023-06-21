 //
//  MainTabBar.swift
//  PizzaShopApp
//
//  Created by ANSAR DAULETBAYEV on 21.06.2023.
//

import SwiftUI

struct MainTabBar: View {
    
    var body: some View {
        
        TabView {
            
            CatalogView()
                .tabItem {
                    VStack {
                        Image (systemName: "person.circle")
                        Text ("Каталог")
                    }
                }
            CartView()
                .tabItem {
                    VStack {
                        Image (systemName: "person.circle")
                        Text ("Корзина")
                    }
                }
            ProfileView()
                .tabItem {
                    VStack {
                        Image (systemName: "person")
                        Text ("Профиль")
                    }
                }
        }
    }
    
}

struct MainTabBar_Previews: PreviewProvider {
    static var previews: some View {
        MainTabBar()
    }
}
