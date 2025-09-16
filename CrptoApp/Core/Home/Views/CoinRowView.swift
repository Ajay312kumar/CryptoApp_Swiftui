//
//  CoinROw.swift
//  CrptoApp
//
//  Created by Ajay kumar on 13/09/25.
//

import SwiftUI

struct CoinRow: View {
    
    let coin: CoinModel
    let showHoldingsColoumn: Bool
    
    var body: some View {
        
        HStack(spacing: 0){
            
            leftColoumn
            Spacer()
            
            if showHoldingsColoumn{
                centerColoumn
            }
            
            rightColoumn
            
        }
        .font(.subheadline)
    }
}

#Preview {
    CoinRow(coin: DeveloperPreview.instance.coin, showHoldingsColoumn: true)
}

extension CoinRow{
    
    private var leftColoumn: some View{
        HStack(spacing: 0){
            Text("\(coin.rank)")
                .font(.caption)
                .foregroundColor(Color.theme.secondaryColor)
                .frame(minWidth: 30)
            Circle()
                .frame(width: 30, height: 30)
            Text(coin.symbol.uppercased())
                .font(.headline)
                .padding(.leading, 6)
                .foregroundColor(Color.theme.accentColor)
        }
    }
    
    private var rightColoumn: some View{
        VStack(alignment: .trailing){
            Text(coin.currentPrice.currencyWith2Decimal())
                .font(.headline)
                .foregroundColor(Color.theme.accentColor)
                .padding(.trailing, 10)
            Text(coin.priceChangePercentage24H?.asPercentageString() ?? "" )
                .font(.caption)
                .foregroundColor((coin.priceChangePercentage24H ?? 0 ) >= 0 ? Color.theme.greenColor : Color.theme.greenColor)
        }
        .frame(width: UIScreen.main.bounds.width/3.5, alignment: .trailing)
    }
    
    private var centerColoumn: some View{
        VStack(alignment: .trailing){
            Text(coin.currentHoldingsValue.currencyWith2Decimal()).bold()
            Text((coin.currentHoldings ?? 0).asNumberString())
        }
        .foregroundColor(Color.theme.accentColor)
    }
    
}
