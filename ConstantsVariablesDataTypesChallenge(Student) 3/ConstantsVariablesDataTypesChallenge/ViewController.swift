//
//  ViewController.swift
//  VariablesAndAssignmentChallenge
//
//  Created by Robin Roberts
//  Copyright (c) 2021 MobileMakers. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    @IBOutlet weak var mvpLabel: UILabel!
    @IBOutlet weak var stretchOneLabel: UILabel!
    @IBOutlet weak var stretchTwoLabel: UILabel!
    @IBOutlet weak var stretchThreeLabel: UILabel!

    //MARK: - Stretch #1 - Part I
    var lastName:String = " Cassady"
    var titleName:String = " Mr"
    
    

    //MARK: - Stretch #2 - Part I
    var nameOne: String = " Ryan"
    var nameTwo: String = " Joey"
    var nameThree: String = " Cam"
    var nameFour: String = " Kelly"

    //MARK: - Stretch #3 - Part I
    var scoreOne = 23
    var scoreTwo = 40
    var scoreThree = 20
    var scoreFour = 13
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //MARK: - MVP
        let firstName:String = "Mikey"
        
        
        //TODO: - MVP, Uncomment the line below
        mvpLabel.text = firstName
        
        //MARK: - Stretch #1 - Part II
        var greeting:String = "Hello," + titleName + lastName
        
        
        //TODO: - Stretch #1, Uncomment the line below
       stretchOneLabel.text = greeting

        //MARK: - Stretch #2 - Part II
        var teamOne = nameOne + ", " + nameTwo
        var teamTwo = nameThree + ", " + nameFour
        
        
        //TODO: - Stretch #2, Uncomment the line below
       stretchTwoLabel.text = "Team 1: \(teamOne)\nTeam 2: \(teamTwo)"

        //MARK: - Start Stretch #3 - Part II
        
        
        
        //TODO: - Stretch #3, Uncomment the line below
//        stretchThreeLabel.text = "\(teamHighScoreOne)\n\(teamHighScoreTwo)"
    }

}

