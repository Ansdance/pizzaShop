//
//  PositionCell.swift
//  PizzaShopApp
//
//  Created by ANSAR DAULETBAYEV on 23.06.2023.
//

import SwiftUI

struct PositionCell: View {
    
    let position: Position
    
    var body: some View {
        
        HStack {
            Text(position.product.title)
                .fontWeight(.bold)
            Spacer()
            Text("\(position.count) sht")
            Text("\(position.cost) R")
                .frame(width: 85, alignment: .trailing)
        }.padding(.horizontal)
    }
}


struct PositionCell_Previews: PreviewProvider {
    static var previews: some View {
        PositionCell(position: Position(id: UUID().uuidString, product: Product(id: UUID().uuidString, title: "Margarita", imageUrl: "pizzaPH", price: 350, descript: "trara"), count: 3))
    }
}
