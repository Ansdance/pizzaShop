//
//  MainTabBarViewModel.swift
//  PizzaShopApp
//
//  Created by ANSAR DAULETBAYEV on 25.06.2023.
//

import Foundation
import FirebaseAuth

class MainTabBarViewModel: ObservableObject {
    
    @Published var user: User
    
    init(user: User) {
        self.user = user
    }
}
