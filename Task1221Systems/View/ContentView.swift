//
//  ContentView.swift
//  Task1221Systems
//
//  Created by Konstantin on 01.02.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(.white)
                .ignoresSafeArea()
            List {
                HStack (alignment: .center) {
                    Text(" Цена по карте ")
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
                    .frame(height: 300)
                    
                
                HStack {
                   
                        Button {
                            print("reviewButton pressed")
                        } label: {
                            HStack {
                                Image(systemName: "star.fill")
                                    .foregroundColor(.yellow)
                                Text("\(Product1221Systems.rating())")
                                Text("| \(Product1221Systems.reviewCount()) \(Product1221Systems.wordDeclension())")
                                    .foregroundColor(.gray)
                            }
                    }
                    Spacer()
                    
                    Image(systemName: "seal.fill")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .foregroundColor(.red)
                        .frame(height: 50)
                        .overlay(Text("-\(Product1221Systems.discountPercent)%"))
                }
                
                HStack {
                    Text(Product1221Systems.title)
                        .font(.system(size: 50).weight(.bold))
                        .multilineTextAlignment(.leading)
                    
                    Spacer()
                    
                }
                HStack {
                    HStack {
                        Image("russianFlag")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(height: 30)
                            .clipShape(Circle())
                        Text(Product1221Systems.productionPlace)
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
                
                Text(Product1221Systems.description)
                    .font(.system(size: 15))
                    .multilineTextAlignment(.leading)
                
                HStack {
                    Text("Основные характеристики")
                        .font(.system(size: 20).weight(.bold))
                        .multilineTextAlignment(.leading)
                    Spacer()
                }
                .padding(.vertical, 10)
                
                
                // Get rid of hardcode in the future
                HStack {
                    Text(Product1221Systems.mainCharacteristicArray[0].characteristic)
                        .multilineTextAlignment(.leading)
                    Text("..................................")
                        .lineLimit(1)
                    Text(Product1221Systems.mainCharacteristicArray[0].value)
                        .multilineTextAlignment(.trailing)
                }
                
                HStack {
                    Text(Product1221Systems.mainCharacteristicArray[1].characteristic)
                        .multilineTextAlignment(.leading)
                    Text("..................................")
                        .lineLimit(1)
                    Text(Product1221Systems.mainCharacteristicArray[1].value)
                        .multilineTextAlignment(.trailing)
                        .aspectRatio(contentMode: .fill)
                }
                
                HStack {
                    Text(Product1221Systems.mainCharacteristicArray[2].characteristic)
                        .multilineTextAlignment(.leading)
                    Text("..................................")
                        .lineLimit(1)
                    Text(Product1221Systems.mainCharacteristicArray[2].value)
                        .multilineTextAlignment(.trailing)
                        .aspectRatio(contentMode: .fill)
                }
                
                HStack {
                    Text(Product1221Systems.mainCharacteristicArray[3].characteristic)
                        .multilineTextAlignment(.leading)
                    Text(".............................")
                        .lineLimit(1)
                        
                    Text(Product1221Systems.mainCharacteristicArray[3].value)
                        .multilineTextAlignment(.trailing)
                        .aspectRatio(contentMode: .fill)
                }
                
                Button {
                    print("showFullCharacteristic button pressed")
                } label: {
                    Text("Все характеристики")
                        .foregroundColor(.green)
                        .bold()
                }
                
                HStack {
                    Text("Отзывы")
                        .font(.system(size: 17).weight(.bold))
                    
                    Spacer()
                    
                    Button {
                        print("showFullReviews pressed")
                    } label: {
                        Text("Все \(Product1221Systems.reviewCount())")
                        .foregroundColor(.green)
                        .bold()
                    }
                    
                    
                    

                }
                
            }
            
        }
        
    }
}


#Preview {
    ContentView()
}

