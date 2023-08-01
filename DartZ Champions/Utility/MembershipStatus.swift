//
//  MembershipStatus.swift
//  DartZ Champions
//
//  Created by Юрий Потапов on 30.07.2023.
//

import Foundation
import SwiftUI

enum MembershipStatus {
    case briliant
    case gold
    case silver
    case nomember
    
    static func getColor(_ type: Self) -> Color {
        switch type {
        case .briliant:
            return Color.init(hex: "#00ffc8")
        case .gold:
            return Color.init(hex: "#f2e018")
        case .silver:
            return Color.init(hex: "#8788c4")
        case .nomember:
            return Color.init(hex: "#797979")
        }
    }
}
