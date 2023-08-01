//
//  WinScoreType.swift
//  DartZ Champions
//
//  Created by Юрий Потапов on 02.08.2023.
//

import Foundation

struct WinScoreType{
    
    static let WS_301: Int = 301
    
    static let WS_501: Int = 501
    
    static let WS_MAP: [Int] = [
        WS_301,
        WS_501
    ]
    
    static func getWinScoreByIndex(index: Int) -> Int {
        return WS_MAP[index]
    }
}
