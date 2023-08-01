//
//  TaskCard.swift
//  DartZ Champions
//
//  Created by Юрий Потапов on 01.08.2023.
//

import SwiftUI

struct TaskCard: View {
    var body: some View {
        Card {
            VStack(alignment: .leading) {
                Subheader(text: "Задачи:")
                    .padding(.bottom, 5)
                HStack {
                    Text("В следующем обновлении..")
                }
            }
        }
    }
}

struct TaskCard_Previews: PreviewProvider {
    static var previews: some View {
        TaskCard()
    }
}
