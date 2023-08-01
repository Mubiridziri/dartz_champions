//
//  GameOptions.swift
//  DartZ Champions
//
//  Created by Юрий Потапов on 01.08.2023.
//

import SwiftUI

struct GameOptions: View {
    @Binding var selecetedWinScore: Int?
    
    var body: some View {
        VStack {
            Header(text: "Режим игры")
                .padding(.vertical)
            VStack (alignment: .leading) {
                HStack {
                    Text("Счет:")
                        .fontWeight(.semibold)
                        .padding(.trailing, 10)
                    VRadioButton(buttons: ["301", "501", "Свой"], buttonSelected: $selecetedWinScore)
                }.padding(.bottom, 30)
                
                WideButton(text: "Одиночная игра") {
                    
                }
                WideButton(text: "Кооперативная игра") {
                    
                }
            }.padding()
            Spacer()
        }.presentationDetents([.height(300), .medium])
    }
}

struct GameOptions_Previews: PreviewProvider {
    static var previews: some View {
        GameOptions(selecetedWinScore: .constant(0))
    }
}
