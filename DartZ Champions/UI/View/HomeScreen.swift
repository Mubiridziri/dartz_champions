//
//  HomeView.swift
//  DartZ Champions
//
//  Created by Юрий Потапов on 01.08.2023.
//

import SwiftUI

struct HomeScreen: View {
    @State var showingGameModeList: Bool = false
    @State var authorOpened: Bool = false
    @State var selecetedWinScore: Int? = 0
    @State var selecetedMode: Int? = 0
    @State var isGameStarting = false
    @State var player: Player
    
    var body: some View {
        if isGameStarting {
            GameScreen(winScore: WinScoreType.getWinScoreByIndex(index: selecetedWinScore!), player: player)
        } else {
            VStack {
                Group {
                    Header(text: "Добро пожаловать!")
                        .padding()
                    Profile(player: $player)
                    WideButton(text: "Начать игру") {
                        showingGameModeList.toggle()
                    }
                    .padding(.top, 15)
                    .sheet(isPresented: $showingGameModeList) {
                        GameOptions(
                            selecetedWinScore: $selecetedWinScore,
                            selecetedMode: $selecetedMode,
                            isGameStarting: $isGameStarting
                        )
                    }
                }.padding(.horizontal)
                ScrollView {
                    Group {
                        ReportCard(player: $player)
                            .padding(.vertical, 10)
                        TaskCard()
                            .padding(.vertical, 10)
                        AchievementCard()
                            .padding(.vertical, 10)
                    }.padding()
                }
                Spacer()
                Button("Developed by Mubiridziri") {
                    authorOpened.toggle()
                }.font(.footnote)
                    .foregroundColor(Color.init(hex: "#797979"))
                    .sheet(isPresented: $authorOpened) {
                        DeveloperScreen()
                    }
                
            }
        }
        }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen(player: Player(
            name: "Mubiridziri",
            rank: "Разработчик",
            verification: true
        ))
    }
}
