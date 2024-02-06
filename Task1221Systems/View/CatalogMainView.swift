//
//  TabView.swift
//  Task1221Systems
//
//  Created by Konstantin on 04.02.2024.
//

import SwiftUI

struct CatalogMainView: View {
    
    @StateObject var viewModel = CatalogViewModel()
        
    var body: some View {
        
        ScrollView {
            ForEach(viewModel.products) { product in
                
                NavigationLink {
                    ProductView(product: product)
                        .environmentObject(viewModel)
                } label: {
                    Image(product.image)
                        .resizable()
                        .frame(width: 150, height: 150)
                        
                    Text(product.title)
                }

            }
           
        }
    }
}

#Preview {
    CatalogMainView()
        .environmentObject(CatalogViewModel())
}
