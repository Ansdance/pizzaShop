 //
//  MainTabBar.swift
//  PizzaShopApp
//
//  Created by ANSAR DAULETBAYEV on 21.06.2023.
//

import SwiftUI

struct MainTabBar: View {
    
    var viewModel: MainTabBarViewModel
    
    var body: some View {
        
        TabView {
            
            NavigationView {
                CatalogView()
            }
                .tabItem {
                    VStack {
                        Image (systemName: "person.circle")
                        Text ("Каталог")
                    }
                }
            CartView(viewModel: CartViewModel.shared)
                .tabItem {
                    VStack {
                        Image (systemName: "person.circle")
                        Text ("Корзина")
                    }
                }
            ProfileView(viewModel: ProfileViewModel(profile: MWUser(id: "",
                                                                      name: "",
                                                                      phone: 777777777,
                                                                      address: "")))
                .tabItem {
                    VStack {
                        Image (systemName: "person")
                        Text ("Профиль")
                    }
                }
        }
    }
    
}
