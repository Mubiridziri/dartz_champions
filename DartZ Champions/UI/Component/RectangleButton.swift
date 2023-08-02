//
//  RectangleButton.swift
//  DartZ Champions
//
//  Created by Юрий Потапов on 01.08.2023.
//

import SwiftUI

struct RectangleButton: View {
    var text: String = ""
    var action: () -> Void
    var body: some View {
        Button {
            action()
        } label: {
            Text(text)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .foregroundColor(.white)
                .padding()
        }.modifier(customShadowButtonModifier())
    }
}


struct RectangleButton_Previews: PreviewProvider {
    static var previews: some View {
        RectangleButton(text: "Пример кнопки") {
            
        }
    }
}
