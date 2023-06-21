//
//  CatalogViewModel.swift
//  PizzaShopApp
//
//  Created by ANSAR DAULETBAYEV on 21.06.2023.
//

import Foundation

class CatalogViewModel: ObservableObject {
    static let shared = CatalogViewModel ()
    var popularProducts = [
        Product(id: "1",
                 title: "Маргарита Гурмэ",
                 imageUrl: "Not found" ,
                 price: 450,
                 descript: "Самая бомжатская пицца"),
        Product(id: "2",
                 title: "Маргарита",
                 imageUrl: "Not found",
                 price: 350,
                 descript: "Самая бомжатская пицца"),
        Product(id: "3",
                 title: "Пепперони",
                 imageUrl: "Not found",
                 price: 550,
                 descript: "Самая бомжатская пицца"),
        Product(id: "4",
                 title: "Гавайская",
                 imageUrl: "Not found",
                 price: 400,
                 descript: "Самая бомжатская пицца"),
        Product(id: "5",
                 title: "Диабло",
                 imageUrl: "Not found",
                 price: 620,
                 descript: "Самая бомжатская пицца")
    ]
    
    var pizzas = [
        Product(id: "1",
                 title: "Маргарита Гурмэ",
                 imageUrl: "Not found" ,
                 price: 450,
                 descript: "Самая бомжатская пицца"),
        Product(id: "2",
                 title: "Маргарита",
                 imageUrl: "Not found",
                 price: 350,
                 descript: "Самая бомжатская пицца"),
        Product(id: "3",
                 title: "Пепперони",
                 imageUrl: "Not found",
                 price: 550,
                 descript: "Самая бомжатская пицца"),
        Product(id: "4",
                 title: "Гавайская",
                 imageUrl: "Not found",
                 price: 400,
                 descript: "Самая бомжатская пицца"),
        Product(id: "5",
                 title: "Диабло",
                 imageUrl: "Not found",
                 price: 620,
                 descript: "Самая бомжатская пицца")
    ]
}
