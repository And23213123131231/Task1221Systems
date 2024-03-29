//
//  ChoiceButtonView.swift
//  Task1221Systems
//
//  Created by Konstantin on 02.02.2024.
//

import SwiftUI

struct AddToCartSectionView: View {
    
    let product: Product
    
    @State private var selected = "pices"
    @State private var count = 1.0
    
    var body: some View {
        VStack {
            Picker(selection: $selected) {
                    Text("Шт").tag("pices")
                    Text("Кг").tag("kilograms")
                
            } label: {
                Text("Pices or Kilograms")
            }
            .pickerStyle(.segmented)
            
            HStack {
                VStack(alignment: .leading, content: {
                    Text("\(String(format: "%.2f", (selected == "pices" ? product.discountedPricePerPices() : product.discountedPricePerWeight()))) Руб")
                        .font(.system(size: 30))
                        .bold()
                    if product.discountedPricePerWeight() != product.pricePerWeight {
                        Text("\(String(format: "%.2f", (selected == "pices" ? product.pricePerPices : product.pricePerWeight))) Руб")
                            .strikethrough()
                    }
                })
                
                Spacer()
                
                Capsule()
                    .foregroundColor(.green)
                    .frame(height: 70)
                    .overlay(
                        HStack {
                            Button(action: {
                                if count >= 1 {
                                    count -= 1
                                }
                            }, label: {
                                Image(systemName: "minus")
                                    .resizable()
                                    .foregroundColor(.white)
                                    .frame(width: 30, height: 5)
                            })
                            .padding(.leading)
                            
                            Spacer()
                            
                            Button(action: {
                                print("Add to cart button pressed")
                            }, label: {
                                VStack {
                                    Text("\(String(format: "%.0f", count)) \(selected == "pices" ? "Шт" : "Кг")")
                                        .font(.system(size: 20).weight(.bold))
                                        .foregroundColor(.white)
                                    
                                    Text("\(String(format: "%.2f", (selected == "pices" ? product.discountedPricePerPices() * count : product.discountedPricePerWeight() * count))) Руб")
                                        .font(.system(size: 13))
                                        .foregroundColor(.white)
                                }
                            })
                            
                            Spacer()
                            
                            Button(action: {
                                count += 1
                            }, label: {
                                Image(systemName: "plus")
                                    .resizable()
                                    .foregroundColor(.white)
                                    .frame(width: 30, height: 30)
                                
                            })
                            .padding(.trailing)
                            
                        })
            }
        }
    }
}

#Preview {
    AddToCartSectionView(product: Product.data()[0])
}


