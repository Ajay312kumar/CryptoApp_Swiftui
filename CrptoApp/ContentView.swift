//
//  ContentView.swift
//  CrptoApp
//
//  Created by Ajay kumar on 03/09/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Color.theme.background
                .ignoresSafeArea()
            VStack(spacing: 40){
                
              
                Text("green")
                    .foregroundColor(Color.theme.greenColor)
                
                Text("red")
                    .foregroundColor(Color.theme.redColor)
                
                Text("AccentColor")
                    .foregroundColor(Color.theme.accentColor)
                
                Text("Secondary Text")
                
            }
            .font(.headline)
            
        }
    }
}

#Preview {
    ContentView()
}
