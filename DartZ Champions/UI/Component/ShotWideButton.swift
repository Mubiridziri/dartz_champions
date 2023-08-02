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
            Button(String(format: "%d\t(x3)", originScore * 3)) {
                action(originScore * 3)
            }
            Button(String(format: "%d\t(x2)", originScore * 2)) {
                action(originScore * 2)
            }
        } label: {
            Text(text)
                .frame(maxWidth: .infinity)
                .foregroundColor(.white)
                .padding()
        } primaryAction: {
            action(originScore)
        }
        .modifier(customButtonModifier())
    }
}

struct MultiWideButton_Previews: PreviewProvider {
    static var previews: some View {
        ShotWideButton(text: "Пример", originScore: 3) { score in
            print(score)
        }
    }
}
