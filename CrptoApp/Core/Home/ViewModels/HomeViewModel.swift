//
//  HomeViewModel.swift
//  CrptoApp
//
//  Created by Ajay kumar on 17/09/25.
//

import Foundation
import Combine

class HomeViewModel: ObservableObject {
    
    @Published var allCoins: [CoinModel] = []
    @Published var portfolioCoins: [CoinModel] = []
    
    private let dataService = CoinDataService()
    private var cancellables: Set<AnyCancellable> = []
    
    
    
    init() {
        addSubscriber()
    }
    
    
    private func addSubscriber() {
        dataService.$allCoins.sink { [weak self] (returnedCoins) in
            self?.allCoins = returnedCoins
        }
        .store(in: &cancellables)
    }
}
