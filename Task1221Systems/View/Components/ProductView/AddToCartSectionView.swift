//
//  ChoiceButtonView.swift
//  Task1221Systems
//
//  Created by Konstantin on 02.02.2024.
//

import SwiftUI

struct AddToCartSectionView: View {
    
    let discountedPrice: Double
    let originalPrice: Double
    
    @State private var whatIsSelected = "pices"
    @State private var count = 1.0
    var totalPrice: Double {
        return discountedPrice * count
    }
    
    
    var body: some View {
        VStack {
            HStack {
                RoundedRectangle(cornerRadius: 0)
                    .foregroundColor(whatIsSelected == "pices" ? .white : .gray)
                    .frame(height: 20)
                    .overlay(Text("Шт")
                        .foregroundColor(Color.black)
                        .bold()
                    )
                    .onTapGesture {
                        withAnimation {
                            whatIsSelected = "pices"
                            print("Selected: \(whatIsSelected)")
                        }
                    }
                
                RoundedRectangle(cornerRadius: 0)
                    .foregroundColor(whatIsSelected == "kilograms" ? .white : .gray)
                    .frame(height: 20)
                    .overlay(Text("Кг")
                        .foregroundColor(Color.black)
                        .bold()
                    )
                    .onTapGesture {
                        withAnimation {
                            whatIsSelected = "kilograms"
                            print("Selected: \(whatIsSelected)")
                        }
                    }
            }
            .overlay(
                RoundedRectangle(cornerRadius: 0)
                    .stroke(Color.gray, lineWidth: 2)
            )}
        
        HStack {
            VStack(alignment: .leading, content: {
                Text("\(String(format: "%.2f", discountedPrice)) Руб")
                    .font(.system(size: 30))
                    .bold()
                if discountedPrice != originalPrice {
                    Text("\(String(format: "%.2f", originalPrice)) Руб")
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
                            
                        }, label: {
                            VStack {
                                Text("\(String(format: "%.0f", count)) \(whatIsSelected == "pices" ? "Шт" : "Кг")")
                                    .font(.system(size: 20))
                                    .bold()
                                    .foregroundColor(.white)
                                Text("\(String(format: "%.2f", totalPrice)) Руб")
                                    .font(.system(size: 20))
                                    
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


#Preview {
    AddToCartSectionView(discountedPrice: 100.0, originalPrice: 120.0)
}


