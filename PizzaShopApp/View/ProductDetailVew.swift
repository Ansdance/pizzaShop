//
//  ProductDetailVew.swift
//  PizzaShopApp
//
//  Created by ANSAR DAULETBAYEV on 21.06.2023.
//

import SwiftUI

struct ProductDetailVew: View {
    
    var viewModel: ProductDetailViewModel
    @State var size = "malenkaya"
    @State var count = 1
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        VStack {
            VStack(alignment: .leading) {
                Image("pizzaPH")
                    .resizable()
                    .frame(maxWidth: .infinity, maxHeight: 260)
                
                HStack {
                    Text("\(viewModel.product.title)!")
                        .font(.title2.bold())
                    Spacer()
                    Text("\(viewModel.getPrice(size: self.size)) P")
                        .font(.title2)
                }.padding(.horizontal)
                Text("\(viewModel.product.descript)")
                    .padding(.horizontal)
                    .padding(.vertical, 4)
                
                HStack {
                    Stepper("Kolichestvo", value: $count, in: 1...10)
                    Text("\(self.count)")
                        .padding(.leading, 32)
                }.padding(.horizontal)
                
                Picker("Razmer pizzy", selection: $size) {
                    ForEach(viewModel.sizes, id: \.self) { item in
                        Text(item)
                    }
                }//.ignoresSafeArea()
                .pickerStyle(.segmented)
                .padding()
            }
            Button {
                var position = Position(id: UUID().uuidString,
                                        product: viewModel.product,
                                        count: self.count)
                
                position.product.price = viewModel.getPrice(size: size)
                
                CartViewModel.shared.addPosition(position)
                presentationMode.wrappedValue.dismiss()
                } label: {
                Text("V korzinu")
                    .padding()
                    .padding(.horizontal, 60)
                    .cornerRadius(30)
                    .foregroundColor(.black)
                    .background(LinearGradient(colors: [Color("yellow"), Color("orange")], startPoint: .leading, endPoint: .trailing))
                    .cornerRadius(30)
            }
            Spacer()
        }
    }
}

struct ProductDetailVew_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailVew(viewModel: ProductDetailViewModel(product: Product(id: "1",
                                                                            title: "Маргарита Гурмэ",
                                                                            imageUrl: "Not found",
                                                                            price: 450,
                                                                            descript: "Самая бомжатская пицца")))
    }
}
