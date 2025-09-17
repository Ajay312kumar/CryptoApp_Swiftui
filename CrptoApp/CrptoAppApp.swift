//
//  CrptoAppApp.swift
//  CrptoApp
//
//  Created by Ajay kumar on 03/09/25.
//

import SwiftUI

@main
struct CrptoAppApp: App {
    
    @StateObject private var vm = HomeViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView{
                HomeView()
                    .navigationBarHidden(true)
            }
            .environmentObject(vm)
        }
    }
}
