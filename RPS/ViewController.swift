//
//  ViewController.swift
//  RPS
//
//  Created by Antarcticaman on 27/4/2564 BE.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var gameStateLabel: UILabel!
    @IBOutlet weak var appSign: UILabel!
    
    @IBOutlet weak var rockButton: UIButton!
    @IBOutlet weak var paperButton: UIButton!
    @IBOutlet weak var scissorsButton: UIButton!
    
    @IBOutlet weak var playAgainButton: UIButton!
    
    var playerTurn : Sign = .paper
    var currentState : GameState = .start
    var computerTurn : Sign = .paper
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        stateStart()
       playAgainButton.layer.cornerRadius = 6
       
    }
    
    
    @IBAction func rockButtonTapped(_ sender: Any) {
        playerTurn = .rock
        computerTurn = randomSign()
        appSign.text = computerTurn.emoji
        currentState =  battleResult(computerTurn: computerTurn, playerTurn: playerTurn)
        gameStateLabel.text = currentState.message
        paperButton.isHidden = true
        scissorsButton.isHidden = true
        playAgainButton.isHidden = false
        changeBackgroundColor()
        changeFontColor()
    }
    
    @IBAction func paperButtonTapped(_ sender: Any) {
        playerTurn = .paper
        computerTurn = randomSign()
        appSign.text = computerTurn.emoji
        currentState =  battleResult(computerTurn: computerTurn, playerTurn: playerTurn)
        gameStateLabel.text = currentState.message
        rockButton.isHidden = true
        scissorsButton.isHidden = true
        playAgainButton.isHidden = false
        changeBackgroundColor()
        changeFontColor()
    }
    
    @IBAction func scissorsButtonTapped(_ sender: Any) {
        playerTurn = .scissors
        computerTurn = randomSign()
        appSign.text = computerTurn.emoji
        currentState =  battleResult(computerTurn: computerTurn, playerTurn: playerTurn)
        gameStateLabel.text = currentState.message
        rockButton.isHidden = true
        paperButton.isHidden = true
        playAgainButton.isHidden = false
        changeBackgroundColor()
        changeFontColor()
    }
    
    
    @IBAction func playAgain(_ sender: Any) {
        stateStart()
    }
    
    func stateStart() {
        currentState = .start
        appSign.text = "👽"
        gameStateLabel.text = currentState.message
        rockButton.isHidden = false
        paperButton.isHidden = false
        scissorsButton.isHidden = false
        playAgainButton.isHidden = true
        changeBackgroundColor()
        changeFontColor()
    }
    
    func changeBackgroundColor() {
      
        switch currentState {
        case .win:
            self.view.backgroundColor = UIColor.systemGreen
        case .lose:
            self.view.backgroundColor = UIColor.systemRed
        case .draw:
            self.view.backgroundColor = UIColor.lightGray
        default:
            self.view.backgroundColor = UIColor.white
        }
    }
    
    func changeFontColor() {
        switch currentState {
        case .start:
            gameStateLabel.textColor = UIColor.black
        default:
            gameStateLabel.textColor = UIColor.white
        }
    }
    
}



