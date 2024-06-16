//
//  Item.swift
//  TarotScanner
//
//  Created by Ian Denysenko on 16.06.2024.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
