//
//  CharacteristicsView.swift
//  Task1221Systems
//
//  Created by Konstantin on 03.02.2024.
//

import SwiftUI

struct CharacteristicsView: View {
        
    let product: Product
    
    @State private var buttonLabel = "Все характеристики"
    @State private var rowsCount = 3
        
    var body: some View {
        VStack {
            ForEach(0..<rowsCount, id: \.self) { i in
                CharacteristicsRow(charactiristics: product.mainCharacteristicArray[i])
            }
        }
        
        HStack {
            Button {
                print("showFullCharacteristic button pressed")
                withAnimation {
                    buttonLabel = (buttonLabel == "Все характеристики" ? "Свернуть" : "Все характеристики")
                    rowsCount = (buttonLabel == "Все характеристики" ? 3 : product.mainCharacteristicArray.count)
                }
            } label: {
                Text(buttonLabel)
                    .foregroundColor(.green)
                    .bold()
            }
            Spacer()
        }
    }
    
}


#Preview {
    CharacteristicsView(product: Product.data()[0])
}
