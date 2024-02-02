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
            Text(review.text)
        }
        .frame(width: 150, height: 150)
        .background(Color.white)
        .shadow(radius: 5)
        .cornerRadius(10)
    }
}

#Preview {
    ReviewCell(review: Product1221Systems.reviewArray[0])
}
