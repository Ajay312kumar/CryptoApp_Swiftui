//
//  CoinROw.swift
//  CrptoApp
//
//  Created by Ajay kumar on 13/09/25.
//

import SwiftUI

struct CoinRow: View {
    
    let coin: CoinModel
    
    var body: some View {
        
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
            Spacer()
            VStack(alignment: .trailing){
                Text("\(coin.currentPrice)")
                    .font(.headline)
                    .foregroundColor(Color.theme.accentColor)
                    .padding(.trailing, 10)
                Text("\(coin.priceChangePercentage24H ?? 0 )%")
                    .font(.caption)
                    .foregroundColor((coin.priceChangePercentage24H ?? 0 ) >= 0 ? Color.theme.greenColor : Color.theme.greenColor)
            }
            
            
        }
        
    }
}

#Preview {
    CoinRow(coin: DeveloperPreview.instance.coin)
}
