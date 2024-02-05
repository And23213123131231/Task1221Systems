//
//  Products.swift
//  Task1221Systems
//
//  Created by Konstantin on 01.02.2024.
//

import Foundation

struct ProductData {
    
    let id = "1"
    let title = "1221 systems"
    let image = "logo"
    let discountPercent = 7
    let ratingImageURL = "Not Found"
    let productionPlace = "Россия, Нижний Новгород"
    let prodictionPlaceFlag = "russianFlag"
    let productionPlaceFlagURL = "Not Found"
    let description = "1221Systems – аккредитованная IT-компания, которая специализируется на разработке IT-решений для бизнеса розничной и оптовой торговли. Наша компания выполняет разработку IT-продуктов группы компаний \"Сладкая жизнь\" – одного из крупнейших дистрибьюторов продуктов питания в России."
    let price = 100.0
    
    let mainCharacteristicArray = [
        MainCharacteristic(characteristic: "Главный офис", value: "Россия, Нижний Новгород"),
        MainCharacteristic(characteristic: "Активные проекты", value: "13 шт"),
        MainCharacteristic(characteristic: "Количество сотрудников", value: "100 человек"),
        MainCharacteristic(characteristic: "email", value: "1221@1221systems.ru"),
    ]
    
    let reviewArray = [
        Review(id: 3, userName: "Петр П.", date: "2 февраля 2024", rating: 5, text: "Замечательная молодая, но быстрорастущая компания."),
        Review(id: 2, userName: "Юрий Ю.", date: "1 марта 2023", rating: 3, text: "Замечательная молодая, но быстрорастущая компания."),
        Review(id: 1, userName: "Иван И.", date: "9 июня 2022", rating: 4, text: "Замечательная молодая, но быстрорастущая компания.")
    ]

    
    
}
