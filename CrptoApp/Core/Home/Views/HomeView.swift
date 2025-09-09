//
//  HomeView.swift
//  CrptoApp
//
//  Created by Ajay kumar on 08/09/25.
//

import SwiftUI
struct HomeView: View {
    
    @State private var isShowPostfolio: Bool = false
    
    var body: some View {
        ZStack {
            Color.theme.background
                .ignoresSafeArea()
            
            VStack {
                homeHeader
                Spacer(minLength: 0)
            }
            
        }
    }
}

#Preview {
    NavigationView {
        HomeView()
            .navigationBarHidden(true)
    }
}

extension HomeView {
    
    private var homeHeader: some View {
        HStack {
            CircleButtonView(iconName: isShowPostfolio ? "plus" : "info")
                .animation(.none, value: isShowPostfolio)
                .background(
                    CircleButtonAnimationView(animate: $isShowPostfolio)
                )
            
            Spacer()
            
            Text(isShowPostfolio ? "Portfolio" : "Live Price")
                .font(.headline)
                .fontWeight(.heavy)
                .foregroundColor(Color.theme.accentColor)
            
            Spacer()
            
            CircleButtonView(iconName: "chevron.right")
                .rotationEffect(Angle(degrees: isShowPostfolio ? 180 : 0))
                .onTapGesture {
                    withAnimation(.spring()) {
                        isShowPostfolio.toggle()
                    }
                }
           
        }
        .padding(.horizontal)
    }
}

