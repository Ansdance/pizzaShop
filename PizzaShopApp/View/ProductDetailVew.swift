//
//  ProductDetailVew.swift
//  PizzaShopApp
//
//  Created by ANSAR DAULETBAYEV on 21.06.2023.
//

import SwiftUI

struct ProductDetailVew: View {
    
    var product:Product
    
    var body: some View {
        Text("\(product.title)!")
    }
}

struct ProductDetailVew_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailVew(product: Product(id: "1",
                                          title: "Маргарита Гурмэ",
                                          imageUrl: "Not found",
                                          price: 450,
                                          descript: "Самая бомжатская пицца"))
    }
}
