//
//  MultiWideButton.swift
//  DartZ Champions
//
//  Created by Юрий Потапов on 02.08.2023.
//

import SwiftUI

struct ShotWideButton: View {
    var text: String = ""
    var originScore: Int
    var action: (_ score: Int) -> Void
    var body: some View {
        Menu {
            Button(String(format: "%dx3=%d", originScore, originScore * 3)) {
                action(originScore * 3)
            }
            Button(String(format: "%dx2=%d", originScore, originScore * 2)) {
                action(originScore * 2)
            }
            Button(String(format: "%dx1=%d", originScore, originScore)) {
                action(originScore)
            }
          
        } label: {
            Text(text)
                .frame(maxWidth: .infinity)
                .foregroundColor(.white)
                .padding()
        }.modifier(customButtonModifier())
    }
}

struct MultiWideButton_Previews: PreviewProvider {
    static var previews: some View {
        ShotWideButton(text: "Пример", originScore: 3) { score in
            print(score)
        }
    }
}
