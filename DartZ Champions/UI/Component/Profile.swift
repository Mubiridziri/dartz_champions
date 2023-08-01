//
//  Profile.swift
//  DartZ Champions
//
//  Created by Юрий Потапов on 01.08.2023.
//

import SwiftUI

struct Profile: View {
    @Binding var player: Player
    var body: some View {
        Card {
            Image("Logo")
                .resizable(resizingMode: .stretch)
                .frame(width: 75, height: 75)
            VStack(alignment: .leading) {
                HStack {
                    Text(player.name)
                        .font(.title)
                    if player.verification {
                        Image(systemName: "star.circle.fill")
                            .foregroundColor(Color.mint)
                    }
                }
                Text(player.rank)
                    .foregroundColor(Color(hex: "#797979"))
            }
            Spacer()
        }
    }
}

struct Profile_Previews: PreviewProvider {
    static var previews: some View {
        Profile(player: .constant(Player(name: "Mubiridziri", rank: "Разработчик"))).padding()
    }
}
