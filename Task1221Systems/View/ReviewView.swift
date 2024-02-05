//
//  ReviewView.swift
//  Task1221Systems
//
//  Created by Konstantin on 04.02.2024.
//

import SwiftUI

struct ReviewView: View {
    
    let reviewArray: [Review]
    
    var body: some View {
        
        ScrollView(.vertical) {
                ForEach(reviewArray, id: \.id) { item in
                    ReviewCell(review: item)
                        .onTapGesture {
                            withAnimation {
                                print("Need to open full review")
                            }
                }
                    Spacer()
            }
        }
    }
}
    
    #Preview {
        ReviewView(reviewArray: [
            Review(id: 3, userName: "Петр П.", date: "2 февраля 2024", rating: 5, text: "Замечательная молодая, но быстрорастущая компания."),
            Review(id: 2, userName: "Юрий Ю.", date: "1 марта 2023", rating: 5, text: "Замечательная молодая, но быстрорастущая компания."),
            Review(id: 1, userName: "Иван И.", date: "9 июня 2022", rating: 4, text: "Замечательная молодая, но быстрорастущая компания.")
        ])
    }
