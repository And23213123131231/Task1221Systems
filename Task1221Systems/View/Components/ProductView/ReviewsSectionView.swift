//
//  ReviewsView.swift
//  Task1221Systems
//
//  Created by Konstantin on 02.02.2024.
//

import SwiftUI

struct ReviewsSectionView: View {
        
    let reviewArray: [Review]
    
    var body: some View {
        HStack {
            Text("Отзывы")
                .font(.system(size: 20).weight(.bold))

            Spacer()
            
            NavigationLink {
                ReviewView(reviewArray: reviewArray)
            } label: {
                Text("Все \(reviewArray.count)")
                    .font(.system(size: 20).weight(.bold))
                    .foregroundColor(.green)
                    .bold()
            }
        }
        
            ScrollView(.horizontal) {
                HStack {
                    ForEach(reviewArray, id: \.id) { item in
                        ReviewCell(review: item)
                            .frame(width: 150, height: 150)
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
    ReviewsSectionView(reviewArray: Product.data()[0].reviewArray)
}
