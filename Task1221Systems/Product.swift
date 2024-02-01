//
//  Products.swift
//  Task1221Systems
//
//  Created by Konstantin on 01.02.2024.
//

import Foundation

struct Product {
    static let id = "1"
    static let title = "1221 systems"
    static let imageURL = "Not Found"
    static let rating = "5.0"
    static let ratingImageURL = "Not Found"
    static let productionPlace = "Россия, Нижний Новгород"
    static let productionPlaceFlagURL = "Not Found"
    static let reviewCount = "2 отзыва"
    static let description = "1221Systems – аккредитованная IT-компания, которая специализируется на разработке IT-решений для бизнеса розничной и оптовой торговли. Наша компания выполняет разработку IT-продуктов группы компаний \"Сладкая жизнь\" – одного из крупнейших дистрибьюторов продуктов питания в России."
    static let salary = "100000"
    static let reviewArray = [
        Review(userName: "Константин Г.", date: "2 февраля 2024", rating: 5, text: "Привлекательная компания, интересные продукты. Хочу здесь работать."),
        Review(userName: "QA-инженер", date: "1 марта 2023", rating: 5, text: "Замечательная молодая, но быстрорастущая компания. Лояльное руководство, HR-команда на высоте! Гибкий график работы, выплата зп всегда в срок, активности и корпоративы от компании. Хорошее оборудование для работы от компании. И команда, которая всегда подскажет и поможет. Огромные возможности для роста и развития! Очень приятно быть частью 1221)")
    ]
    
    struct MainCharacteristics {
        static let headOfficeLocation = "Россия, Нижний Новгород"
        static let activeProjects = "13"
        static let numberOfEmployees = "100"
        static let email = "1221@1221systems.ru"
    }
    
    
}
