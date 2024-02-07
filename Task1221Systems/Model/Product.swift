//
//  ProductTest.swift
//  Task1221Systems
//
//  Created by Konstantin on 06.02.2024.
//

import Foundation

struct Product: Identifiable, Hashable {

    let id: Int
    let title: String
    let image: String
    let discount: Int
    let productionPlace: String
    let prodictionPlaceFlag: String
    let description: String
    let pricePerWeight: Double
    let pricePerPices: Double
    let mainCharacteristicArray: [MainCharacteristic]
    let reviewArray: [Review]
    
    func discountedPricePerWeight() -> Double {
        var actualPrice = 0.0
      
                if discount > 0 {
                    let discountDecimal = Double(discount) / 100
                    actualPrice = pricePerWeight - pricePerWeight * discountDecimal
                } else {
                    actualPrice = pricePerWeight
                
        }
        return actualPrice
    }
    
    func discountedPricePerPices() -> Double {
        var actualPrice = 0.0
      
                if discount > 0 {
                    let discountDecimal = Double(discount) / 100
                    actualPrice = pricePerPices - pricePerPices * discountDecimal
                } else {
                    actualPrice = pricePerPices
                
        }
        return actualPrice
    }
    
    func rating() -> String {
        var totalScore = 0
        for r in reviewArray {
            totalScore += r.rating
        }
        let rating = Double(totalScore) / Double(reviewArray.count)
        return String(format: "%.1f", rating)
    }
    
    func wordDeclension() -> String {
        let preLastDigit = reviewArray.count % 100 / 10
        let lastDigit = reviewArray.count % 10
        
        if preLastDigit == 1 {
            return "отзывов"
        }
        switch lastDigit {
        case 1 :
            return "отзыв"
        case 2...4 :
            return "отзыва"
        default :
            return "отзывов"
        }
    }
    
    static func == (lhs: Product, rhs: Product) -> Bool {
        lhs.id == rhs.id
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
    
    static func data() -> [Product] {
        [Product(id: 2, title: "Яблоко Ред Чиф", image: "apple", discount: 5, productionPlace: "Россия, Кабардино-Балкарская Республика", prodictionPlaceFlag: "russianFlag", description: "Плоды массой 180 – 380 гр., имеют коническую, поднимающуюся кверху форму. Кожица ярко — красного цвета с преобладанием воскового налета. Мякоть кремового оттенка, ароматная, очень сочная и сладкая.", pricePerWeight: 100, pricePerPices: 30, mainCharacteristicArray: [
            MainCharacteristic(characteristic: "Энергия, ккал", value: "46"),
            MainCharacteristic(characteristic: "Жиры, г", value: "1.6"),
            MainCharacteristic(characteristic: "Углеводы, г", value: "9.8"),
            MainCharacteristic(characteristic: "Белки, г", value: "0.4"),
        ], reviewArray: [
            Review(id: 3, userName: "Петр П.", date: "2 февраля 2024", rating: 5, text: "Замечательный товар. Хочу всегда его покупать."),
            Review(id: 2, userName: "Юрий Ю.", date: "1 марта 2023", rating: 3, text: "Замечательный товар. Хочу всегда его покупать."),
            Review(id: 1, userName: "Иван И.", date: "9 июня 2022", rating: 4, text: "Замечательный товар. Хочу всегда его покупать.")
        ]),
         Product(id: 1, title: "Лайм", image: "lime", discount: 10, productionPlace: "Россия, Кабардино-Балкарская Республика", prodictionPlaceFlag: "russianFlag", description: "Плоды массой 180 – 380 гр., имеют коническую, поднимающуюся кверху форму. Кожица ярко — красного цвета с преобладанием воскового налета. Мякоть кремового оттенка, ароматная, очень сочная и сладкая.", pricePerWeight: 100, pricePerPices: 30, mainCharacteristicArray: [
             MainCharacteristic(characteristic: "Энергия, ккал", value: "46"),
             MainCharacteristic(characteristic: "Жиры, г", value: "1.6"),
             MainCharacteristic(characteristic: "Углеводы, г", value: "9.8"),
             MainCharacteristic(characteristic: "Белки, г", value: "0.4"),
         ], reviewArray: [
             Review(id: 3, userName: "Петр П.", date: "2 февраля 2024", rating: 5, text: "Замечательный товар. Хочу всегда его покупать."),
             Review(id: 2, userName: "Юрий Ю.", date: "1 марта 2023", rating: 3, text: "Замечательный товар. Хочу всегда его покупать."),
             Review(id: 1, userName: "Иван И.", date: "9 июня 2022", rating: 4, text: "Замечательный товар. Хочу всегда его покупать.")
         ]),
         Product(id: 3, title: "Помидор Черри", image: "tomato", discount: 0, productionPlace: "Россия, Кабардино-Балкарская Республика", prodictionPlaceFlag: "russianFlag", description: "Плоды массой 180 – 380 гр., имеют коническую, поднимающуюся кверху форму. Кожица ярко — красного цвета с преобладанием воскового налета. Мякоть кремового оттенка, ароматная, очень сочная и сладкая.", pricePerWeight: 100, pricePerPices: 30, mainCharacteristicArray: [
             MainCharacteristic(characteristic: "Энергия, ккал", value: "46"),
             MainCharacteristic(characteristic: "Жиры, г", value: "1.6"),
             MainCharacteristic(characteristic: "Углеводы, г", value: "9.8"),
             MainCharacteristic(characteristic: "Белки, г", value: "0.4"),
         ], reviewArray: [
             Review(id: 3, userName: "Петр П.", date: "2 февраля 2024", rating: 5, text: "Замечательный товар. Хочу всегда его покупать."),
             Review(id: 2, userName: "Юрий Ю.", date: "1 марта 2023", rating: 3, text: "Замечательный товар. Хочу всегда его покупать."),
             Review(id: 1, userName: "Иван И.", date: "9 июня 2022", rating: 4, text: "Замечательный товар. Хочу всегда его покупать.")
         ])]
    }
    
}
