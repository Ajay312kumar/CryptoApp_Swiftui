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
        Image(systemName: iconName)
            .font(.headline)
            .foregroundColor(Color.theme.accentColor)
            .frame(width: 50, height: 50)
            .background(
                Circle()
                    .foregroundColor(Color.theme.background)
            )
            .shadow(color: Color.theme.accentColor, radius: 10, x: 0, y: 0)
            .padding()
        
    }
}

#Preview {
    CircleButtonView(iconName: "info")
        .padding()
        .previewLayout(.sizeThatFits)
}

