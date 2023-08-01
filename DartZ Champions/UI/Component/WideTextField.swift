//
//  WideTextField.swift
//  DartZ Champions
//
//  Created by Юрий Потапов on 01.08.2023.
//

import SwiftUI

struct WideTextField: View {
    var title: String
    @Binding var text: String
    var body: some View {
        TextField(title, text: $text)
            .modifier(customTextFieldViewModifier())
            
    }
}

struct customTextFieldViewModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding()
            .background(.white)
            .cornerRadius(10)
            .shadow(color: .black.opacity(0.1), radius: 0, x: 0, y: 0)
            .shadow(color: .black.opacity(0.1), radius: 2, x: 1, y: 1)
            .shadow(color: .black.opacity(0.09), radius: 3.5, x: 4, y: 5)
            .shadow(color: .black.opacity(0.05), radius: 4.5, x: 10, y: 11)
            .shadow(color: .black.opacity(0.01), radius: 5.5, x: 18, y: 20)
            .shadow(color: .black.opacity(0), radius: 6, x: 28, y: 31)
            .overlay(
            RoundedRectangle(cornerRadius: 10)
            .inset(by: 0.5)
            .stroke(Color(red: 0.88, green: 0.91, blue: 0.93), lineWidth: 1)
            )
    }
}

struct WideTextField_Previews: PreviewProvider {
    static var previews: some View {
        WideTextField(title: "TextField", text: .constant(""))
    }
}
