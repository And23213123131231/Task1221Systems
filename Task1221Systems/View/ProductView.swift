//
//  ContentView.swift
//  Task1221Systems
//
//  Created by Konstantin on 01.02.2024.
//

import SwiftUI

struct ProductView: View {
            
    let product: Product
                
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack {
            Color(.white)
                .ignoresSafeArea()
            ScrollView(.vertical) {
                HStack {
                    if product.discount > 0 {
                        Text("Цена по карте")
                            .padding(.all, 3)
                            .background(Color(.green))
                            .foregroundColor(.white)
                            .font(.system(size: 15))
                            .clipShape(RoundedRectangle(cornerRadius: 5.0))
                    }
                    
                    Spacer()
                }
                
                Image(product.image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(height: 200, alignment: .center)
                
                HStack {
                    
                    NavigationLink {
                        ReviewView(reviewArray: product.reviewArray)
                    } label: {
                        HStack {
                            Image(systemName: "star.fill")
                                .foregroundColor(.yellow)
                            Text("\(product.rating())")
                                .foregroundColor(.black)
                            Text("| \(product.reviewArray.count) \(product.wordDeclension())")
                                .foregroundColor(.gray)
                        }
                    }
                    
                    Spacer()
                    
                    if product.discount > 0 {
                        Image(systemName: "seal.fill")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .foregroundColor(.red)
                            .frame(height: 50)
                            .overlay(Text("-\(product.discount)%"))
                    }
                }
                
                HStack {
                    Text(product.title)
                        .font(.system(size: 50).weight(.bold))
                        .multilineTextAlignment(.leading)
                    
                    Spacer()
                    
                }
                HStack {
                    HStack {
                        Image(product.prodictionPlaceFlag)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(height: 30)
                            .clipShape(Circle())
                        Text(product.productionPlace)
                            .font(.system(size: 15))
                    }
                    
                    Spacer()
                }
                
                Spacer()
                
                HStack {
                    Text("Описание")
                        .font(.system(size: 20).weight(.bold))
                    Spacer()
                    
                }
                .padding(.vertical, 10)
                
                Text(product.description)
                    .font(.system(size: 15))
                
                HStack {
                    Text("Основные характеристики")
                        .font(.system(size: 20).weight(.bold))
                    Spacer()
                }
                .padding(.vertical, 10)
                
                CharacteristicsView(product: product)
                    .padding(.bottom)
                
                ReviewsSectionView(reviewArray: product.reviewArray)
                
                Button {
                    print("writeReview pressed")
                } label: {
                    Capsule()
                        .fill(Color.white)
                        .frame(height: 40)
                        .overlay(Text("Оставить отзыв")
                            .font(.system(size: 20).weight(.bold))
                            .foregroundColor(.green))
                        .overlay(
                            Capsule().stroke(Color.green, lineWidth: 5)
                        )
                }
                .padding(.horizontal)
                
                Divider()
                
                AddToCartSectionView(product: product)
            }
        }
        .navigationBarBackButtonHidden()
        .navigationBarItems(leading: Button(action: {
            self.presentationMode.wrappedValue.dismiss()
        }, label: {
            Image(systemName: "arrow.backward")
        }))
        
        .toolbar(content: {
            ToolbarItem(placement: .topBarTrailing) {
                HStack {
                    Button(action: {
                        print("Toolbar button 1 pressed")
                    }, label: {
                        Image(systemName: "list.bullet.rectangle.portrait")
                    })
                    
                    Button(action: {
                        print("Toolbar button 2 pressed")
                    }, label: {
                        Image(systemName: "arrow.up.square")
                    })
                    
                    Button(action: {
                        print("Toolbar button 3 pressed")
                    }, label: {
                        Image(systemName: "heart")
                    })
                }
            }
        })
        .padding(.horizontal)
        
    
        

        
        
    }
}



#Preview {
    ProductView(product: Product.data()[0])
}
