//
//  Sign.swift
//  RPS
//
//  Created by Antarcticaman on 27/4/2564 BE.
//

import Foundation

enum Sign {
    case rock, paper, scissors
    
    var emoji: String {
        switch self {
        case .rock: return "👊"
        case .paper: return "🖐"
        case .scissors: return "✌️"
        }
    }
}
