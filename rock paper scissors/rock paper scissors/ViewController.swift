//
//  ViewController.swift
//  rock paper scissors
//
//  Created by period8 on 2/3/22.
//

import UIKit

class ViewController: UIViewController {

    
    
    @IBOutlet weak var image: UIImageView!
    
    @IBOutlet weak var yourChoice: UILabel!
    
    @IBOutlet weak var computerChoice: UILabel!
    
    @IBOutlet weak var winner: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
  
    
    enum Guess: String {
        case rock = "Rock"
        case paper = "Paper"
        case scissors = "Scissors"
    }
    
    enum Winner: String {
        case user = "You won!"
        case computer = "Computer won!"
        case tie = "TIE!"
    }
    
    let guesses:[Guess] = [.rock, .paper, .scissors]
    
    @IBAction func userGuessed(_ sender: UIButton) {
        
        let computerGuess = generateComputerGuess()
        
        let tappedButton = sender.tag
        switch tappedButton {
    case 1:
            winner.text = (determineWinner(user: .rock, computer: computerGuess)).rawValue
    case 2:
            winner.text = (determineWinner(user: .paper, computer: computerGuess)).rawValue
    case 3:
            winner.text = (determineWinner(user: .scissors, computer: computerGuess)).rawValue
    default:
        print("I dont know the buttons tapped")
    }
        
    }
    func generateComputerGuess() -> Guess {
        return guesses.randomElement()!
        
    }
    func determineWinner(user: Guess, computer: Guess) -> Winner {
        
        yourChoice.text = "You guessed: \(user.rawValue)"
        computerChoice.text = "Computer guessed: \(computer.rawValue)"
        switch user {
        case .rock:
            if computer == .scissors {
                return .user}
            else if computer == .paper {
                return .computer}
            else {
                return .tie
            }
                case .paper:
            if computer == .rock {
                return .user}
            else if computer == .scissors {
                return .computer}
            else {
                return .tie
            }
                case .scissors:
            if computer == .paper {
                return .user}
            else if computer == .rock {
                return .computer}
            else {
                return .tie
            }
        }
        
    
    }
   
}

