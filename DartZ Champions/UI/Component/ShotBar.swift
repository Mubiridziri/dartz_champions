//
//  ShotBar.swift
//  DartZ Champions
//
//  Created by Юрий Потапов on 02.08.2023.
//

import SwiftUI

struct ShotBar: View {
    @Binding var shots: [Int]
    var body: some View {
        HStack {
            
            Text(shots.count > 0 ? String(shots[0]) : "")
                .padding(20)
                .frame(width: 70)
                .background(getColor(1))
                .clipShape(Circle())
                .fontWeight(.bold)
            
            Text(shots.count > 1 ? String(shots[1]) : "")
                .padding(20)
                .frame(width: 70)
                .background(getColor(2))
                .clipShape(Circle())
                .fontWeight(.bold)
            Text(shots.count > 2 ? String(shots[2]) : "")
                .padding(20)
                .frame(width: 70)
                .background(getColor(3))
                .clipShape(Circle())
                .fontWeight(.bold)
            
        }
    }
    
    func getColor(_ pos: Int) -> Color {
        if shots.count >= pos && shots[pos - 1] > 0 {
            return Color.init(hex: "#009D10")
        }
        if shots.count >= pos && shots[pos - 1] == 0 {
            return Color.init(hex: "#DE0000")
        }
        
        return Color.init(hex: "#333333")
    }
}

struct ShotBar_Previews: PreviewProvider {
    static var previews: some View {
        ShotBar(shots: .constant([20, 0]))
    }
}
