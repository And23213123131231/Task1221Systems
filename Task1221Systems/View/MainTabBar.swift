//
//  TabBar.swift
//  Task1221Systems
//
//  Created by Konstantin on 04.02.2024.
//

import SwiftUI

struct MainTabBar: View {
        
    @EnvironmentObject var viewModel: CatalogViewModel
    
    var body: some View {
    
        TabView {
            
            Text("Перейдите в Каталог")
                    .tabItem {
                        VStack {
                            Image(systemName: "arrowshape.up.circle")
                            Text("Главная")
                        }
                }
            
            NavigationView {
                CatalogMainView()
                //
            }
                .tabItem {
                    VStack {
                        Image(systemName: "book")
                        Text("Каталог")
                    }
                }
            
            Text("Корзина")
                .tabItem {
                    VStack {
                        Image(systemName: "cart")
                        Text("Корзина")
                    }
                }
            
            Text("Профиль")
                .tabItem {
                    VStack {
                        Image(systemName: "person")
                        Text("Профиль")
                    }
                }
        }
        .accentColor(.green)
    }
}

#Preview {
    MainTabBar()
}
