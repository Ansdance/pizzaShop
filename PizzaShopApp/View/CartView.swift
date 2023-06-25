//
//  CartView.swift
//  PizzaShopApp
//
//  Created by ANSAR DAULETBAYEV on 21.06.2023.
//

import SwiftUI

struct CartView: View {
    
    @StateObject var viewModel: CartViewModel
    
    var body: some View {
        
        VStack {
            List(viewModel.positions) { position in
                PositionCell(position: position)
                    .swipeActions {
                        Button {
                            viewModel.positions.removeAll { pos in
                                pos.id == position.id
                                
                            }
                        }label: {
                            Text("udalit")
                        }.tint(.red)
                    }
            }
            .listStyle(.plain)
            .navigationTitle("Korzina")
            
            HStack {
                Text("Itogo")
                    .fontWeight(.bold)
                Spacer()
                Text("\(self.viewModel.cost) R")
                    .fontWeight(.bold)
            }.padding()
            
            HStack(spacing: 24) {
                Button {
                    print("Otmenit")
                } label: {
                    Text("Otmenit")
                        .font(.body)
                        .fontWeight(.bold)
                        .padding()
                        .foregroundColor(.white)
                        .background(Color.red)
                        .cornerRadius(24)
                }
                
                Button {
                    print("zakazat")
                } label: {
                    Text("zakazat")
                        .font(.body)
                        .fontWeight(.bold)
                        .padding()
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity)
                        .background(Color.green)
                        .cornerRadius(24)
                }

            }.padding()
        }
    }
}

struct CartView_Previews: PreviewProvider {
    static var previews: some View {
        CartView(viewModel: CartViewModel.shared)
    }
}
