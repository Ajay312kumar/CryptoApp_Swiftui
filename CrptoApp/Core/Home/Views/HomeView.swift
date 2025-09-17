//
//  HomeView.swift
//  CrptoApp
//
//  Created by Ajay kumar on 08/09/25.
//

import SwiftUI
struct HomeView: View {
    
    @State private var isShowPostfolio: Bool = false
    @EnvironmentObject private var vm: HomeViewModel
    
    var body: some View {
        ZStack {
            Color.theme.background
                .ignoresSafeArea()
            
            VStack {
                homeHeader
                
                coloumnTitles
                
                if !isShowPostfolio{
                    allCoins
                        .transition(.move(edge: .leading))
                }
                
                if isShowPostfolio{
                    portfolioCoins
                        .transition(.move(edge: .trailing))
                }
            
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
    .environmentObject(DeveloperPreview.instance.homeVM)
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
    
    private var allCoins: some View{
        List(){
            ForEach(vm.allCoins){ coin in
                CoinRow(coin: DeveloperPreview.instance.coin, showHoldingsColoumn: false)
                    .listRowInsets(.init(top: 10, leading: 0, bottom: 10, trailing: 10))
            }
        }
        .listStyle(PlainListStyle())
    }
    
    
    private var portfolioCoins: some View{
        List(){
            ForEach(vm.allCoins){ coin in
                CoinRow(coin: DeveloperPreview.instance.coin, showHoldingsColoumn: true)
                    .listRowInsets(.init(top: 10, leading: 0, bottom: 10, trailing: 10))
            }
        }
        .listStyle(PlainListStyle())
    }
    
    private var coloumnTitles: some View{
        HStack{
            Text("Coin")
            Spacer()
            if isShowPostfolio{
                Text("Heading")
            }
            Text("Price")
                .frame(width: UIScreen.main.bounds.width/3.5, alignment: .trailing)
        }
        .font(.caption)
        .foregroundColor(Color.theme.secondaryColor)
        .padding(.horizontal)
    }
    
}

