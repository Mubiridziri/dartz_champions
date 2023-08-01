//
//  AchievementCard.swift
//  DartZ Champions
//
//  Created by Юрий Потапов on 01.08.2023.
//

import SwiftUI

struct AchievementCard: View {
    var body: some View {
        Card {
            VStack(alignment: .leading) {
                Subheader(text: "Достижения:")
                    .padding(.bottom, 5)
                HStack {
                    Text("В следующем обновлении..")
                }
            }
        }
    }
}

struct AchievementCard_Previews: PreviewProvider {
    static var previews: some View {
        AchievementCard()
    }
}
