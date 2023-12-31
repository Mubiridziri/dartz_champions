//
//  GameOptions.swift
//  DartZ Champions
//
//  Created by Юрий Потапов on 01.08.2023.
//

import SwiftUI

struct GameOptions: View {
    @Environment(\.presentationMode) var presentationMode
    
    @Binding var selecetedWinScore: Int?
    @Binding var selecetedMode: Int?
    @Binding var isGameStarting: Bool

    
    var body: some View {
        VStack {
            Header(text: "Режим игры")
                .padding(.vertical)
                .padding(.top, 10)
            VStack (alignment: .leading) {
                HStack {
                    Text("Счет:")
                        .fontWeight(.semibold)
                        .padding(.trailing, 10)
                    VRadioButton(buttons: ["301", "501",], buttonSelected: $selecetedWinScore)
                }.padding(.bottom, 30)
                
                HStack {
                    Text("Режим:")
                        .fontWeight(.semibold)
                        .padding(.trailing, 10)
                    VIconRadioButton(buttons: ["person.fill", "person.3.fill"], buttonSelected: $selecetedMode)
                }.padding(.bottom, 30)
                
                WideButton(text: "Играть") {
                    isGameStarting = true
                    self.presentationMode.wrappedValue.dismiss()
                }
                
                
            }.padding()
            Spacer()
        }.presentationDetents([.height(350), .medium])
    }
}

struct GameOptions_Previews: PreviewProvider {
    static var previews: some View {
        GameOptions(selecetedWinScore: .constant(0), selecetedMode: .constant(0), isGameStarting: .constant(false))
    }
}
