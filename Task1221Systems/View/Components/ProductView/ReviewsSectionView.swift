//
//  ReviewsView.swift
//  Task1221Systems
//
//  Created by Konstantin on 02.02.2024.
//

import SwiftUI

struct ReviewsSectionView: View {
        
    let count: Int
    let reviewArray: [Review]
    
    var body: some View {
        HStack {
            Text("Отзывы")
                .font(.system(size: 20).weight(.bold))

            Spacer()
            
            Button {
                print("showFullReviews pressed")
            } label: {
                Text("Все \(count)")
                    .font(.system(size: 20).weight(.bold))
                    .foregroundColor(.green)
                    .bold()
            }
        }
        
            ScrollView(.horizontal) {
                HStack {
                    ForEach(reviewArray, id: \.id) { item in
                        ReviewCell(review: item)
                            .onTapGesture {
                                withAnimation {
                                    print("Need to open full review")
                                }
                            }
                    }
                }
            }
    }
}

#Preview {
    ReviewsSectionView(count: 3, reviewArray: [
        Review(id: 3, userName: "Петр П.", date: "2 февраля 2024", rating: 5, text: "Замечательная молодая, но быстрорастущая компания."),
        Review(id: 2, userName: "QA-инженер", date: "1 марта 2023", rating: 5, text: "Замечательная молодая, но быстрорастущая компания."),
        Review(id: 1, userName: "Иван И.", date: "9 июня 2022", rating: 4, text: "Замечательная молодая, но быстрорастущая компания.")
    ])
}
