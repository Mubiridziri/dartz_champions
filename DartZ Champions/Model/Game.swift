//
//  Game.swift
//  DartZ Champions
//
//  Created by Юрий Потапов on 30.07.2023.
//

import Foundation

class Game: Identifiable {
    let winScore: Int
    let createdAt: Date
    let mode: Int
    
    var players: [Player] = []
    var finishedAt: Date? = nil
    
    init(winScore: Int, mode: Int) {
        self.winScore = winScore
        self.mode = mode
        self.createdAt = Date()
    }
}
