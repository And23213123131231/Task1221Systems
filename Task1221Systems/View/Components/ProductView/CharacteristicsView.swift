//
//  CharacteristicsView.swift
//  Task1221Systems
//
//  Created by Konstantin on 03.02.2024.
//

import SwiftUI

struct CharacteristicsView: View {
    
    let charactiristics: [MainCharacteristic]
    
    @State private var buttonLabel = "Все характеристики"
    @State private var rowsCount = 3
        
    var body: some View {
        VStack {
            ForEach(0..<rowsCount, id: \.self) { i in
                CharacteristicsRow(charactiristics: charactiristics[i])
            }
        }
        
        HStack {
            Button {
                print("showFullCharacteristic button pressed")
                withAnimation {
                    buttonLabel = (buttonLabel == "Все характеристики" ? "Свернуть" : "Все характеристики")
                    rowsCount = (buttonLabel == "Все характеристики" ? 3 : charactiristics.count)
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
    CharacteristicsView(charactiristics: [
        MainCharacteristic(characteristic: "Главный офис", value: "Россия, Нижний Новгород"),
        MainCharacteristic(characteristic: "Активные проекты", value: "13 шт"),
        MainCharacteristic(characteristic: "Количество сотрудников", value: "100 человек"),
        MainCharacteristic(characteristic: "email", value: "1221@1221systems.ru"),
    ])
}
