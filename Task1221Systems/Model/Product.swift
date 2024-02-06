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
        [Product(id: 1, title: "1221 systems", image: "logo", discount: 7, productionPlace: "Россия, Нижний Новгород", prodictionPlaceFlag: "russianFlag", description: "1221Systems – аккредитованная IT-компания, которая специализируется на разработке IT-решений для бизнеса розничной и оптовой торговли. Наша компания выполняет разработку IT-продуктов группы компаний \"Сладкая жизнь\" – одного из крупнейших дистрибьюторов продуктов питания в России.", pricePerWeight: 100, pricePerPices: 130, mainCharacteristicArray: [
            MainCharacteristic(characteristic: "Главный офис", value: "Россия, Нижний Новгород"),
            MainCharacteristic(characteristic: "Активные проекты", value: "13 шт"),
            MainCharacteristic(characteristic: "Количество сотрудников", value: "100 человек"),
            MainCharacteristic(characteristic: "email", value: "1221@1221systems.ru"),
        ], reviewArray: [
            Review(id: 3, userName: "Петр П.", date: "2 февраля 2024", rating: 5, text: "Замечательная молодая, но быстрорастущая компания."),
            Review(id: 2, userName: "Юрий Ю.", date: "1 марта 2023", rating: 3, text: "Замечательная молодая, но быстрорастущая компания."),
            Review(id: 1, userName: "Иван И.", date: "9 июня 2022", rating: 4, text: "Замечательная молодая, но быстрорастущая компания.")
        ]),
         Product(id: 1, title: "1221 systems", image: "logo", discount: 7, productionPlace: "Россия, Нижний Новгород", prodictionPlaceFlag: "russianFlag", description: "1221Systems – аккредитованная IT-компания, которая специализируется на разработке IT-решений для бизнеса розничной и оптовой торговли. Наша компания выполняет разработку IT-продуктов группы компаний \"Сладкая жизнь\" – одного из крупнейших дистрибьюторов продуктов питания в России.", pricePerWeight: 100, pricePerPices: 130, mainCharacteristicArray: [
             MainCharacteristic(characteristic: "Главный офис", value: "Россия, Нижний Новгород"),
             MainCharacteristic(characteristic: "Активные проекты", value: "13 шт"),
             MainCharacteristic(characteristic: "Количество сотрудников", value: "100 человек"),
             MainCharacteristic(characteristic: "email", value: "1221@1221systems.ru"),
         ], reviewArray: [
             Review(id: 3, userName: "Петр П.", date: "2 февраля 2024", rating: 5, text: "Замечательная молодая, но быстрорастущая компания."),
             Review(id: 2, userName: "Юрий Ю.", date: "1 марта 2023", rating: 3, text: "Замечательная молодая, но быстрорастущая компания."),
             Review(id: 1, userName: "Иван И.", date: "9 июня 2022", rating: 4, text: "Замечательная молодая, но быстрорастущая компания.")
         ])]
    }
    
}
