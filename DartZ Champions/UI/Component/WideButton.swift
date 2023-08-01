//
//  WideButton.swift
//  DartZ Champions
//
//  Created by Юрий Потапов on 01.08.2023.
//

import SwiftUI

struct WideButton: View {
    var text: String = ""
    var action: () -> Void
    var body: some View {
        Button {
            action()
        } label: {
            Text(text)
                .frame(maxWidth: .infinity)
                .foregroundColor(.white)
                .padding()
        }
        .background(Color.black)
        .cornerRadius(10)
        .shadow(color: .black.opacity(0.1), radius: 0, x: 0, y: 0)
        .shadow(color: .black.opacity(0.1), radius: 2, x: 1, y: 1)
        .shadow(color: .black.opacity(0.09), radius: 3.5, x: 4, y: 5)
        .shadow(color: .black.opacity(0.05), radius: 4.5, x: 10, y: 11)
        .shadow(color: .black.opacity(0.01), radius: 5.5, x: 18, y: 20)
        .shadow(color: .black.opacity(0), radius: 6, x: 28, y: 31)
    }
}

struct WideButton_Previews: PreviewProvider {
    static var previews: some View {
        WideButton(text: "Пример кнопки") {
            
        }
    }
}
