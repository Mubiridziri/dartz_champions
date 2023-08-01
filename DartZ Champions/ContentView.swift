//
//  ContentView.swift
//  DartZ Champions
//
//  Created by Юрий Потапов on 30.07.2023.
//

import SwiftUI

struct ContentView: View {
    
    @State var player: Player?
    
    var body: some View {
        if player != nil {
            HomeScreen(player: player!)
        } else {
            WelcomeScreen(player: $player)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
