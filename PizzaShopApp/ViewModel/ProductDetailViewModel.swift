//
//  ProductDetailViewModel.swift
//  PizzaShopApp
//
//  Created by ANSAR DAULETBAYEV on 23.06.2023.
//

import Foundation

class ProductDetailViewModel: ObservableObject {
    
    @Published var product: Product
    @Published var sizes = ["malenkaya", "srednyaya", "bolshaya"]
    @Published var count = 0
    
    init(product: Product) {
        self.product = product
    }
    
    func getPrice(size: String) -> Int {
        switch size {
        case "malenkaya": return product.price
        case "srednyaya": return Int(Double(product.price) * 1.25)
        case "bolshaya": return Int(Double(product.price) * 1.5)
        default: return 0
        }
    }
}
