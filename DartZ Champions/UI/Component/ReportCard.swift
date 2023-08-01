//
//  ReportCard.swift
//  DartZ Champions
//
//  Created by Юрий Потапов on 01.08.2023.
//

import SwiftUI

struct ReportCard: View {
    @Binding var player: Player
    
    var body: some View {
        Card {
            VStack(alignment: .leading) {
                Subheader(text: "Ваши успехи:")
                HStack(alignment: .top) {
                    VStack(alignment: .leading) {
                        Text(String(format: "Самый большой счет: %d", player.statistic.biggestScore))
                            .padding(.bottom)
                        Text(String(format: "Среднее кол-во бросков для победы: %d", player.statistic.avverageShots))
                        
                    }
                    Spacer()
                    VStack(alignment: .leading) {
                        Text(String(format: "Игр сыграно: %d", player.statistic.gamesPlayed))
                            .padding(.bottom)
                        Text(String(format: "Больше всего попаданий: %d", player.statistic.mostHitsIn))
                    }
                }
                .fontWeight(.light)
                .font(.subheadline)
            }
        }
    }
}

struct ReportCard_Previews: PreviewProvider {
    static var previews: some View {
        ReportCard(player: .constant(Player(name: "Mubiridziri")))
    }
}
