//
//  MembershipToken.swift
//  DartZ Champions
//
//  Created by Юрий Потапов on 01.08.2023.
//

import Foundation

struct MembershipToken {
    static var developer = "dvlpr"
    static var investor = "nvstr"
    
    static func getRank(code: String) -> String? {
        switch code {
        case developer:
            return "Разработчик"
        case investor:
            return "Инвестор"
        default:
            return nil
        }
    }
}
