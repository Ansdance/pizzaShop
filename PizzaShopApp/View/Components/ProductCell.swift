//
//  ProductCe;;.swift
//  PizzaShopApp
//
//  Created by ANSAR DAULETBAYEV on 21.06.2023.
//

import SwiftUI

struct ProductCell: View {
    
    var product: Product
    
    var body: some View {
        HStack(spacing: 15) {
            Image("pizzaPH")
                .resizable()
//                .aspectRatio(contentMode: .fill)
            //                .frame(maxWidth: screen.width * 0.45)
                .frame(width: 48, height: 48)
//                .clipped()
            //                .cornerRadius(16)
            Text(product.title)
                .font(.custom("AvenirNext-regular", size: 12))
            Spacer()
//            Text("\(product.price)")
//                .font(.custom("AvenirNext-bold", size: 12))
            Image(systemName: "chevron.right")
        }//.frame(width: screen.width * 0.45, height: screen.width * 0.55)
//            .background(.white)
//            .cornerRadius(16)
//            .shadow(radius: 4)
    }
}

struct ProductCell_Previews: PreviewProvider {
    static var previews: some View {
        ProductCell(product: Product(id: "1",
                                     title: "Маргарита Гурмэ",
                                     imageUrl: "Not found",
                                     price: 450,
                                     descript: "Самая бомжатская пицца"))
        
    }
}
