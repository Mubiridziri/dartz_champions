//
//  LeaderboardMember.swift
//  DartZ Champions
//
//  Created by Юрий Потапов on 30.07.2023.
//

import Foundation

class LeaderboardMember: Identifiable {
    let player: Player
    let finishedPlace: Int
    
    init(player: Player, finishedPlace: Int) {
        self.player = player
        self.finishedPlace = finishedPlace
    }
}
