//
//  TabView.swift
//  Task1221Systems
//
//  Created by Konstantin on 04.02.2024.
//

import SwiftUI

struct MainView: View {
    
    @State private var isProductViewShow = false
    
    var body: some View {
//        NavigationView {
            ZStack {
                Color(.white)
                    .ignoresSafeArea()
                
                NavigationLink {
                    ProductView()
                } label: {
                    VStack {
                        Image("logo")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(height: 300, alignment: .center)
                        Text("Посмотреть экран товара")
                    }
                }
                
        }
    }
}

#Preview {
    MainView()
}
