//
//  MainCharacteristic.swift
//  Task1221Systems
//
//  Created by Konstantin on 02.02.2024.
//

import Foundation
import SwiftUI

struct MainCharacteristic: Identifiable, Decodable {
    
    var id: String {
        return characteristic
    }

    let characteristic: String
    let value: String
}
