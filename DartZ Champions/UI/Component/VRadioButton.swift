//
//  RadioButton.swift
//  DartZ Champions
//
//  Created by Юрий Потапов on 01.08.2023.
//

import SwiftUI

struct VRadioButton: View {
    let buttons: [String]
        @Binding public var buttonSelected: Int?

        var body: some View {
            HStack(spacing: 20) {
                ForEach(0..<buttons.count) { button in
                    Button(action: {
                        self.buttonSelected = button
                    }) {
                        Text(self.buttons[button])
                            .padding()
                            .foregroundColor(self.buttonSelected == button ? Color.white : Color.black)
                            .background(self.buttonSelected == button ? Color.black : Color.white)
                            .cornerRadius(10)
                    }
                    .shadow(color: .black.opacity(0.1), radius: 0, x: 0, y: 0)
                    .shadow(color: .black.opacity(0.1), radius: 2, x: 1, y: 1)
                    .shadow(color: .black.opacity(0.09), radius: 3.5, x: 4, y: 5)
                    .shadow(color: .black.opacity(0.05), radius: 4.5, x: 10, y: 11)
                    .shadow(color: .black.opacity(0.01), radius: 5.5, x: 18, y: 20)
                    .shadow(color: .black.opacity(0), radius: 6, x: 28, y: 31)
                }
            }
        }
}

struct VIconRadioButton: View {
    let buttons: [String]
        @Binding public var buttonSelected: Int?

        var body: some View {
            HStack(spacing: 20) {
                ForEach(0..<buttons.count) { button in
                    Button(action: {
                        self.buttonSelected = button
                    }) {
                        Image(systemName: self.buttons[button])
                            .padding()
                            .foregroundColor(self.buttonSelected == button ? Color.white : Color.black)
                            .background(self.buttonSelected == button ? Color.black : Color.white)
                            .cornerRadius(10)
                    }
                    .shadow(color: .black.opacity(0.1), radius: 0, x: 0, y: 0)
                    .shadow(color: .black.opacity(0.1), radius: 2, x: 1, y: 1)
                    .shadow(color: .black.opacity(0.09), radius: 3.5, x: 4, y: 5)
                    .shadow(color: .black.opacity(0.05), radius: 4.5, x: 10, y: 11)
                    .shadow(color: .black.opacity(0.01), radius: 5.5, x: 18, y: 20)
                    .shadow(color: .black.opacity(0), radius: 6, x: 28, y: 31)
                }
            }
        }
}

struct VIconRadioButton_Previews: PreviewProvider {
    static var previews: some View {
        VIconRadioButton(buttons: ["person.fill", "person.3.fill"], buttonSelected: .constant(0))
    }
}


struct VRadioButton_Previews: PreviewProvider {
    static var previews: some View {
        VRadioButton(buttons: ["Button 1", "Button 2"], buttonSelected: .constant(1))
    }
}
