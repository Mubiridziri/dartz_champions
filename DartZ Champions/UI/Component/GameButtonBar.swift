//
//  GameButtonBar.swift
//  DartZ Champions
//
//  Created by Юрий Потапов on 02.08.2023.
//

import SwiftUI

struct GameButtonBar: View {
    var click: (_ score: Int) -> Void
    var body: some View {
        ScrollView {
            HStack {
                WideButton(text: String("Промах")) {
                    click(0)
                }
            }
            ButtonRow(buttons: [1, 2, 3], click: click)
            ButtonRow(buttons: [4, 5, 6], click: click)
            ButtonRow(buttons: [7, 8, 9], click: click)
            ButtonRow(buttons: [10, 11, 12], click: click)
            ButtonRow(buttons: [13, 14, 15], click: click)
            ButtonRow(buttons: [16, 17, 18], click: click)
            ButtonRow(buttons: [19, 20], click: click)
            HStack {
                WideButton(text: String(25)) {
                    click(25)
                }
                WideButton(text: String(50)) {
                    click(50)
                }
            }
        }
    }
}

struct ButtonRow: View {
    var buttons: [Int]
    var click: (_ score: Int) -> Void
    var body: some View {
        HStack {
            ForEach(buttons, id: \.self) { el in
                ShotWideButton(text: String(el), originScore: el) {score in
                    click(score)
                }
            }
        }
    }
}

struct GameButtonBar_Previews: PreviewProvider {
    static var previews: some View {
        GameButtonBar() { score in
            print(score)
        }
    }
}
