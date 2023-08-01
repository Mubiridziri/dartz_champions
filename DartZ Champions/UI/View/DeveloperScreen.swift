//
//  DeveloperScreen.swift
//  DartZ Champions
//
//  Created by Юрий Потапов on 30.07.2023.
//

import SwiftUI

struct DeveloperScreen: View {
    var body: some View {
        VStack {
            Group {
                Header(text: "Авторы")
                Group {
                    Subheader(text: "Идея")
                    Text("Mubiridziri")
                }
                Group {
                    Subheader(text: "Разработка")
                    Text("iOS App - Mubiridziri")
                }
                Group {
                    Subheader(text: "Дизайн")
                    Text("Mubiridziri")
                }
                Group {
                    Subheader(text: "Инвесторы")
                    Group {
                        Text("EllisResh - Briliant Investor")
                        .foregroundColor(MembershipStatus.getColor(.briliant))
                        .padding(10)
                    }
                    .background(Color.black)
                    Group {
                        Text("Lambdadelta - Gold Investor")
                            .foregroundColor(MembershipStatus.getColor(.gold))
                            .padding(10)
                    } .background(Color.black)
                    
                    Text("Nekitoos")
                        .foregroundColor(MembershipStatus.getColor(.nomember))
                    Text("rok1N")
                        .foregroundColor(MembershipStatus.getColor(.nomember))
                }
                Group {
                    Subheader(text: "Технологии")
                    Text("SwiftUI, Swift")
                }
            }
            Spacer()
        }.padding()
    }
}

struct DeveloperScreen_Previews: PreviewProvider {
    static var previews: some View {
        DeveloperScreen()
    }
}
