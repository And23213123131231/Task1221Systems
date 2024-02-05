//
//  ContentViewController.swift
//  Task1221Systems
//
//  Created by Konstantin on 03.02.2024.
//

import Foundation

struct Product {
    
    let product = ProductData()
    
    func priceWithDiscount(discount: Int?) -> Double {
        
        var actualPrice = 0.0
        
            if let actualDiscount = discount {
                if actualDiscount > 0 {
                    let discountDecimal = Double(actualDiscount) / 100
                    actualPrice = product.price - product.price * discountDecimal
                } else {
                    actualPrice = product.price
                }
            
        }
        return actualPrice
    }
    
    func reviewCount() -> Int {
        return product.reviewArray.count
    }
    
    func rating() -> String {
        var totalScore = 0
        for r in product.reviewArray {
            totalScore += r.rating
        }
        let rating = Double(totalScore) / Double(reviewCount())
        return String(format: "%.1f", rating)
    }
    
    func wordDeclension() -> String {
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
