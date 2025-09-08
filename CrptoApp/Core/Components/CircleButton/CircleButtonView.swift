//
//  CircleButtonView.swift
//  CrptoApp
//
//  Created by Ajay kumar on 08/09/25.
//

import SwiftUI

struct CircleButtonView: View {
    
    let iconName: String
    
    var body: some View {
        
        VStack{
            HStack{
                Image(systemName: "heart.fill")
                    .font(.headline)
                    .foregroundColor(Color.theme.accentColor)
                    .frame(width: 50, height: 50)
                    .background(
                        Circle()
                            .foregroundColor(Color.theme.background)
                    )
                    .shadow(color: Color.theme.accentColor,
                            radius: 10,x: 0,y: 0)
                    .padding()
                Spacer()
                Text("Header")
                    .lineLimit(1)
                    .font(.callout)
                Spacer()
                Image(systemName: "chevron.right")
                    .font(.headline)
                    .foregroundColor(Color.theme.accentColor)
                    .frame(width: 50, height: 50)
                    .background(
                        Circle()
                            .foregroundColor(Color.theme.background)
                    )
                    .shadow(color: Color.theme.accentColor,
                            radius: 10,x: 0,y: 0)
                    .padding()
                
            }
        }
        .frame(maxWidth: .infinity, maxHeight: 80)
        .background(Color.theme.background)
        .padding(.horizontal)
        
        
    }
}

//#Preview {
//    CircleButtonView(iconName: "info")
//        .padding()
//        .previewLayout(.sizeThatFits)
//}
//
