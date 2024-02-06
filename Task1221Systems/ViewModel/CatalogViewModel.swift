//
//  CatalogViewModel.swift
//  Task1221Systems
//
//  Created by Konstantin on 06.02.2024.
//

import Foundation

class CatalogViewModel: ObservableObject {
    
    @Published private(set) var products = Product.data()
    
    
    
}
