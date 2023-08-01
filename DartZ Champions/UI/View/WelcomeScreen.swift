//
//  WelcomeScreen.swift
//  DartZ Champions
//
//  Created by Юрий Потапов on 01.08.2023.
//

import SwiftUI

struct WelcomeScreen: View {
    
    @Binding var player: Player?
    
    @State var name: String = ""
    @State var code: String = ""
    
    @AppStorage("welcomePageShown")
    var welcomePageShown: Bool?
    
    var body: some View {
        VStack(alignment: .center) {
            Image("Logo")
                .resizable(resizingMode: .stretch)
                .frame(width: 200, height: 200)
            Header(text: "Добро пожаловать в игру!")
            Subheader(text: "Перед тем, как приступить, нужно познакомиться.")
                .multilineTextAlignment(.center)
            WideTextField(title: "Введите имя", text: $name)
                .padding(.vertical, 20)
            
            WideTextField(title: "Код *", text: $code)
                .padding(.bottom, 20)
            Text("* Код выдается участникам членства, если у вас его нет, то оставьте поле пустым")
                .font(.footnote)
                .foregroundColor(.gray)
                .fontWeight(.light)
                .multilineTextAlignment(.center)
                .padding(.bottom)
            
            WideButton(text: String(name.isEmpty ? "Начать" : "Да, меня зовут " + name)) {
                let rank: String? = MembershipToken.getRank(code: code)
                if rank != nil {
                    player = Player.init(name: name, rank: rank)
                } else {
                    player = Player.init(name: name)
                }
                
               
            }.disabled(name.isEmpty)
        }.padding()
    }
}

struct WelcomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeScreen(player: .constant(nil))
    }
}
