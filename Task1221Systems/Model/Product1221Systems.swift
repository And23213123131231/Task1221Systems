//
//  Products.swift
//  Task1221Systems
//
//  Created by Konstantin on 01.02.2024.
//

import Foundation

struct Product1221Systems {
    static let id = "1"
    static let title = "1221 systems"
    static let image = "logo"
    static let discountPercent = 5
    static let ratingImageURL = "Not Found"
    static let productionPlace = "Россия, Нижний Новгород"
    static let productionPlaceFlagURL = "Not Found"
    static let description = "1221Systems – аккредитованная IT-компания, которая специализируется на разработке IT-решений для бизнеса розничной и оптовой торговли. Наша компания выполняет разработку IT-продуктов группы компаний \"Сладкая жизнь\" – одного из крупнейших дистрибьюторов продуктов питания в России."
    static let salary = "100000"
    static let reviewArray = [
        Review(userName: "Константин Г.", date: "2 февраля 2024", rating: 5, text: "Привлекательная компания, интересные продукты. Хочу здесь работать."),
        Review(userName: "QA-инженер", date: "1 марта 2023", rating: 5, text: "Замечательная молодая, но быстрорастущая компания. Лояльное руководство, HR-команда на высоте! Гибкий график работы, выплата зп всегда в срок, активности и корпоративы от компании. Хорошее оборудование для работы от компании. И команда, которая всегда подскажет и поможет. Огромные возможности для роста и развития! Очень приятно быть частью 1221)")
    ]
    
    static let mainCharacteristicArray = [
        MainCharacteristic(characteristic: "Главный офис", value: "Россия, Нижний Новгород"),
        MainCharacteristic(characteristic: "Активные проекты", value: "13 шт"),
        MainCharacteristic(characteristic: "Количество сотрудников", value: "100 человек"),
        MainCharacteristic(characteristic: "email", value: "1221@1221systems.ru"),
    ]
    
    static func reviewCount() -> Int {
        return Product1221Systems.reviewArray.count
    }
    
    static func rating() -> String {
        var totalScore = 0
        for r in reviewArray {
            totalScore += r.rating
        }
        let rating = Double(totalScore) / Double(reviewCount())
        return String(format: "%.1f", rating)
    }
    
    static func wordDeclension() -> String {
        let preLastDigit = reviewCount() % 100 / 10
        let lastDigit = reviewCount() % 10
        
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
    
}
