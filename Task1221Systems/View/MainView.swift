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
        Button(action: {
            print("Present ProductView")
            isProductViewShow.toggle()
        }, label: {
            Text("Посмотреть экран товара")
            
        })
        .fullScreenCover(isPresented: $isProductViewShow, content: {
            ProductView()
        })
    }
}

#Preview {
    MainView()
}
