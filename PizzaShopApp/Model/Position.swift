//
//  Position.swift
//  PizzaShopApp
//
//  Created by ANSAR DAULETBAYEV on 23.06.2023.
//

import Foundation

struct Position: Identifiable {
    
    var id: String
    var product: Product
    var count: Int
    
    var cost: Int {
        return product.price * self.count
    }
}
