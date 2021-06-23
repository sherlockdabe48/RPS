//
//  GameState.swift
//  RPS
//
//  Created by Antarcticaman on 27/4/2564 BE.
//

import Foundation

import GameplayKit
let randomChoice = GKRandomDistribution(lowestValue: 0, highestValue: 2)

func randomSign() -> Sign {
    let sign = randomChoice.nextInt()
    if sign == 0 {
        return .rock
    } else if sign == 1 {
        return .paper
    } else {
        return .scissors
    }
}

enum GameState {
    case start, win, lose, draw
    
    var message: String {
        switch self {
        case .start: return "Rock, Paper, Scissors?"
        case .win: return "You Win!"
        case .lose: return "You Lose."
        case .draw: return "Draw!"
        }
    }
}


func battleResult(computerTurn: Sign, playerTurn: Sign) -> GameState {
    switch computerTurn {
    case .rock:
        if playerTurn == .paper {
            return .win
        } else if playerTurn == .scissors {
            return .lose
        } else {
            return .draw
        }
        
    case .paper:
        if playerTurn == .paper {
            return .draw
        } else if playerTurn == .scissors {
            return .win
        } else {
            return .lose
        }
        
    case .scissors:
        if playerTurn == .paper {
            return .lose
        } else if playerTurn == .scissors {
            return .draw
        } else {
            return .win
        }
    }
}





