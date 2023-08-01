//
//  Sector.swift
//  DartZ Champions
//
//  Created by Юрий Потапов on 30.07.2023.
//

import Foundation

class Sector: Identifiable {
    let label: String
    let value: Int
    
    init(label: String, value: Int) {
        self.label = label
        self.value = value
    }
}
