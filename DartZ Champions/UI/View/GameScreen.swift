//
//  GameScreen.swift
//  DartZ Champions
//
//  Created by Юрий Потапов on 30.07.2023.
//

import SwiftUI

struct GameScreen: View {
    @State var winScore: Int
    @State var player: Player
    @State var shots: [Int] = []
    @State var isOverScore: Bool = false
    
    var body: some View {
        VStack {
            HStack {
                Text("")
                Spacer()
                Header(text: player.name)
                Spacer()
                Menu() {
                    Button("Сбросить попытку", action: handleShotClear)
                    Button("Закончить игру", action: handleExitGame)
                } label: {
                    HStack {
                        Image(systemName: "flag.checkered")
                            .imageScale(.large)
                            .foregroundColor(Color.black)
                    }.padding(.top, 10)
                }.foregroundColor(Color.blue)
                
            }
            Subheader(text: String(format: "Текущий счет: %d", player.currentScore) + getRealCurrentScore())
            Subheader(text: String(format: "Осталось: %d", winScore - player.currentScore))
            ShotBar(shots: $shots).padding(30)
            ScrollView {
                if shots.count < 3 && !player.isLeft && !isOverScore {
                    GameButtonBar(click: handlePlayerClick)
                } else {
                    if player.isLeft {
                        Subheader(text: "Вы набрали достаточное количество очков.")
                            .multilineTextAlignment(.center)
                        WideButton(text: "Завершить игру", action: handleExitGame)
                    } else if isOverScore {
                        Subheader(text: "Перебор!")
                            .multilineTextAlignment(.center)
                        WideButton(text: "Сбросить ход", action: handleShotClear)
                    }
                    else {
                        HStack {
                            WideButton(text: "Отменить ход", action: handleShotClear)
                            Spacer()
                            WideButton(text: "Завершить ход", action: handleShotFinish)
                        }
                    }
                }
                Spacer()
            }
        }.padding()
    }
    
    func getRealCurrentScore() -> String {
        if shots.count > 0 {
            let sum = shots.reduce(0, +)
            let realCurrentScore = winScore - (player.currentScore + sum)
            return String(format: " / %d", realCurrentScore)
        }
        return "";
    }
    
    func handlePlayerClick(score: Int) {
        shots.append(score)
        checkWinCondition()
        checkOverscoreCondition()
    }
    
    func handleShotClear() {
        shots = []
        isOverScore = false
    }
    
    func handleShotFinish () {
        let sum = shots.reduce(0, +)
        player.currentScore += sum
        handleShotClear()
    }
    
    func checkOverscoreCondition() {
        let sum = shots.reduce(0, +)
        if player.currentScore + sum > winScore {
            isOverScore = true
        }
    }
    
    func checkWinCondition() {
        let sum = shots.reduce(0, +)
        if player.currentScore + sum == winScore {
            handleShotFinish()
            player.isLeft = true
        }
    }
    
    func handleExitGame() {
        handleShotClear()
        player.clear()
    }
}

struct GameScreen_Previews: PreviewProvider {
    static var previews: some View {
        GameScreen(winScore: 301, player: Player(
            name: "Mubiridziri",
            rank: "Разработчик",
            verification: true
        ))
    }
}
