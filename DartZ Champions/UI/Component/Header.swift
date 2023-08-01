//
//  Header.swift
//  DartZ Champions
//
//  Created by Юрий Потапов on 30.07.2023.
//

import SwiftUI

struct Header: View {
    let text: String
    var body: some View {
        Text(text)
            .font(.title)
            .fontWeight(.bold)
            .padding(.top, 1)
            .padding(.bottom, 1)
    }
}

struct Subheader: View {
    let text: String
    var body: some View {
        Text(text)
            .font(.title2)
            .fontWeight(.bold)
            .padding(.top, 1)
            .padding(.bottom, 1)
    }
}

struct Header_Previews: PreviewProvider {
    static var previews: some View {
        Header(text: "Заголовок страницы")
    }
}

struct Subheader_Previews: PreviewProvider {
    static var previews: some View {
        Subheader(text: "Подзаголовок страницы")
    }
}
