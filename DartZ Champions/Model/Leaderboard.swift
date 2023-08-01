//
//  Leaderboard.swift
//  DartZ Champions
//
//  Created by Юрий Потапов on 30.07.2023.
//

import Foundation

class Leaderboard: Identifiable {
    var members: [LeaderboardMember] = []
    
    func addMember(player: Player, place: Int) {
        self.members.append(LeaderboardMember(player: player, finishedPlace: place))
    }
}
