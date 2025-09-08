//
//  HomeView.swift
//  CrptoApp
//
//  Created by Ajay kumar on 08/09/25.
//

import SwiftUI
struct HomeView: View {
    var body: some View {
        ZStack {
            Color.theme.background
                .ignoresSafeArea()
            
            VStack {
                CircleButtonView(iconName: "house.fill") // ✅ valid SF Symbol
                Spacer() // ✅ now inside VStack, pushes content up
            }
            .padding()
        }
    }
}

#Preview {
    NavigationView {
        HomeView()
            .navigationBarHidden(true)
    }
}
