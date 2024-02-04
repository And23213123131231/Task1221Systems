//
//  CharacteristicsCell.swift
//  Task1221Systems
//
//  Created by Konstantin on 03.02.2024.
//

import SwiftUI

struct CharacteristicsRow: View {
    
    let charactiristics: MainCharacteristic
    
    var body: some View {
        HStack {
            Text(charactiristics.characteristic)
                .multilineTextAlignment(.leading)
            Spacer()
            Text(charactiristics.value)
                .multilineTextAlignment(.trailing)
        }
    }
}

#Preview {
    CharacteristicsRow(charactiristics: MainCharacteristic(characteristic: "Главный офис", value: "Россия, Нижний Новгород"))
}
