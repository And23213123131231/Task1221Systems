//
//  ContentView.swift
//  Task1221Systems
//
//  Created by Konstantin on 01.02.2024.
//

import SwiftUI

struct ProductView: View {
        
    let content = Product()
    
    var discountedPrice: Double {
        content.priceWithDiscount(discount: content.product.discountPercent)
    }
    
    var body: some View {
        ZStack {
            Color(.white)
                .ignoresSafeArea()
            ScrollView(.vertical) {
                HStack {
                    Text("Цена по карте")
                        .padding(.all, 3)
                        .background(Color(.green))
                        .foregroundColor(.white)
                        .font(.system(size: 15))
                        .clipShape(RoundedRectangle(cornerRadius: 5.0))
                    
                    Spacer()
                }
                
                Image("logo")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(height: 300, alignment: .center)
                
                HStack {
                    
                    Button {
                        print("reviewButton pressed")
                    } label: {
                        HStack {
                            Image(systemName: "star.fill")
                                .foregroundColor(.yellow)
                            Text("\(content.rating())")
                            Text("| \(content.reviewCount()) \(content.wordDeclension())")
                                .foregroundColor(.gray)
                        }
                    }
                    
                    Spacer()
                    
                    Image(systemName: "seal.fill")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .foregroundColor(.red)
                        .frame(height: 50)
                        .overlay(Text("-\(content.product.discountPercent)%"))
                }
                
                HStack {
                    Text(content.product.title)
                        .font(.system(size: 50).weight(.bold))
                        .multilineTextAlignment(.leading)
                    
                    Spacer()
                    
                }
                HStack {
                    HStack {
                        Image(content.product.prodictionPlaceFlag)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(height: 30)
                            .clipShape(Circle())
                        Text(content.product.productionPlace)
                            .font(.system(size: 15))
                    }
                    
                    Spacer()
                }
                
                Spacer()
                
                HStack {
                    Text("Описание")
                        .font(.system(size: 20).weight(.bold))
                        .multilineTextAlignment(.leading)
                    Spacer()
                }
                .padding(.vertical, 10)
                
                Text(content.product.description)
                    .font(.system(size: 15))
                    .multilineTextAlignment(.leading)
                
                HStack {
                    Text("Основные характеристики")
                        .font(.system(size: 20).weight(.bold))
                        .multilineTextAlignment(.leading)
                    Spacer()
                }
                .padding(.vertical, 10)
                
                CharacteristicsView(charactiristics: content.product.mainCharacteristicArray)
                    .padding(.bottom)
                
                ReviewsView(count: content.reviewCount(), reviewArray: content.product.reviewArray)
                
                Button {
                    print("writeReview pressed")
                } label: {
                    Capsule()
                        .fill(Color.white)
                        .frame(height: 40)
                        .overlay(Text("Оставить отзыв")
                            .bold()
                            .foregroundColor(.green))
                        .overlay(
                            Capsule().stroke(Color.green, lineWidth: 5)
                        )
                }
                .padding(.horizontal)
                
                AddToCartSectionView(discountedPrice: discountedPrice, originalPrice: content.product.price)
            }
        }
        .padding(.horizontal)
        

        
        
    }
}



#Preview {
    ProductView()
}
