//
//  Catalog.swift
//  PizzaShopApp
//
//  Created by ANSAR DAULETBAYEV on 21.06.2023.
//

import SwiftUI

struct CatalogView: View {
    
    let layoutForPopular = [GridItem(.adaptive(minimum: screen.width / 2.2))]
    let layoutForPizza = [GridItem(.adaptive(minimum: screen.width / 2.1))]
    
    var body: some View {
        
        ScrollView(.vertical, showsIndicators: false) {
            
            Section("Каталог") {
                ScrollView(.vertical, showsIndicators: false) {
                    LazyVGrid(columns: layoutForPizza) {
                        ForEach(CatalogViewModel.shared.popularProducts, id: \.id) { item in
                            NavigationLink {
                                
                                let viewModel = ProductDetailViewModel(product: item)
                                ProductDetailVew(viewModel: viewModel)
                            } label: {
                                ProductCell(product: item)
                                    .foregroundColor(.black)

                            }
                        }
                    }.padding()
                }
            }
        }//.navigationTitle(Text("Каталог"))
    }
}

struct Catalog_Previews: PreviewProvider {
    static var previews: some View {
        CatalogView()
    }
}
