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
    @State var player: Player = Player(
        name: "Mubiridziri",
        rank: "Разработчик",
        verification: true
    ) //MockData (TOOD service.loadCurrentPlayer())
    
    var body: some View {
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
                        selecetedMode: $selecetedMode
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

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}
