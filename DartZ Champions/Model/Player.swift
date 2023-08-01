//
//  Player.swift
//  DartZ Champions
//
//  Created by Юрий Потапов on 30.07.2023.
//

import Foundation

class Player: Identifiable {
    let name: String
    
    var rank = "Без звания"
    var verification: Bool = false
    var currentScore: Int = 0
    var isLeft: Bool = false
    var statistic: PlayerStatistic = PlayerStatistic()
    
    init(name: String, rank: String? = nil, verification: Bool = false) {
        self.name = name
        if rank != nil {
            self.rank = rank!
        }
        self.verification = verification
    }
    
    func clear() {
        self.currentScore = 0
    }
}
