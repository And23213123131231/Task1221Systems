//
//  ReviewView.swift
//  Task1221Systems
//
//  Created by Konstantin on 02.02.2024.
//

import SwiftUI

struct ReviewCell: View {
    
    let review: Review
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(review.userName)
                .bold()
                .clipped()
            Text(review.date)
                .foregroundColor(.gray)
            HStack(spacing: 0){
                ForEach(0..<review.rating, id: \.self) { item in
                    Image(systemName: "star.fill")
                        .foregroundColor(.yellow)
                }
                ForEach(review.rating..<5, id: \.self) { item in
                    Image(systemName: "star.fill")
                        .foregroundColor(.gray)
                }
            }
            Text(review.text)
        }
        .background(Color.white)
        .cornerRadius(10)
        .shadow(radius: 5)
        .frame(width: 150, height: 150)
        
        
        
    }
}

#Preview {
    ReviewCell(review: Review(id: 1, userName: "Иван И.", date: "9 июня 2022", rating: 4, text: "Замечательная молодая, но быстрорастущая компания."))
}
