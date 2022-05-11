//
//  tictactoe.swift
//  rock paper scissors
//
//  Created by period8 on 4/5/22.
//

import UIKit

class tictactoe: UIViewController {

    

     

        @IBOutlet weak var labelOne: UILabel!

     

        @IBOutlet weak var labelTwo: UILabel!

     

        @IBOutlet weak var labelThree: UILabel!

     

        @IBOutlet weak var labelFour: UILabel!

     

        @IBOutlet weak var labelFive: UILabel!

     

        @IBOutlet weak var labelSix: UILabel!

     

        @IBOutlet weak var labelSeven: UILabel!

     

        @IBOutlet weak var labelEight: UILabel!

     

        @IBOutlet weak var labelNine: UILabel!

     

        

     

        @IBOutlet weak var turnLabel: UILabel!

     

        

     

        @IBOutlet weak var myView: UIView!

     

        

     

        var allLabels: [UILabel] = []

     

        

     

        override func viewDidLoad(){

     

            super.viewDidLoad()

     

            //put all the labels into the allLabels Array

     

            allLabels = [labelOne, labelTwo, labelThree, labelFour, labelFive, labelSix, labelSeven, labelEight, labelNine]

     

            

     

            //Who goes first

     

            turnLabel.text = "X"

     

        }

     

        

     

        

     

        @IBAction func tapGesture(sender: UITapGestureRecognizer) {

     

            let selectedPoint = sender.location(in: myView)

     

            for label in allLabels {

     

                if label.frame.contains(selectedPoint) {

     

                    placeInToLabel(myLabel: label)

     

                }

     

            }

     

            checkForWinner()

     

        }

     

        

     

        //Use the parameter in conditional

     

        func placeInToLabel(myLabel: UILabel) {

     

            if myLabel.text == "" {

     

                if turnLabel.text == "X" {

     

                    myLabel.text = turnLabel.text

     

                    turnLabel.text = "O"

     

                }

     

                else {

     

                    myLabel.text = turnLabel.text

     

                    turnLabel.text = "X"

     

                }

     

            }

     

        }

     

        

     

        //How many ways can you win Tic Tac Toe? 8

     

        func checkForWinner(){

     

            if labelOne.text == labelTwo.text && labelTwo.text == labelThree.text  && labelOne.text != ""{
            }
            if labelFour.text == labelFive.text && labelFive.text == labelSix.text && labelFour.text != ""{
            }
            if labelSeven.text == labelEight.text && labelEight.text == labelNine.text && labelSeven.text != ""{
            }
            if labelOne.text == labelFive.text && labelFive.text == labelNine.text && labelOne.text != ""{
            }
            if labelThree.text == labelFive.text && labelFive.text == labelSeven.text && labelThree.text != ""{
            }
            if labelOne.text == labelFour.text && labelFour.text == labelSeven.text && labelOne.text != ""{
            }
            if labelTwo.text == labelFive.text && labelFive.text == labelEight.text && labelTwo.text != ""{
            }
            if labelThree.text == labelSix.text && labelSix.text == labelNine.text && labelThree.text != ""{
            }
                
     

                alert()

     

            }

     

        

     

        

     

        func alert() {

     

            let winningAlert = UIAlertController(title: "YOU WON DUDE!!!", message: "Way to go fam!", preferredStyle: .alert)

     

            let newGameButton = UIAlertAction(title: "New Game?", style: .default) { (action) in

     

                self.reset()

     

            }

     

            let cancelButton = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)

     

            

     

            winningAlert.addAction(newGameButton)

     

            winningAlert.addAction(cancelButton)

     

            

     

            present(winningAlert, animated: true, completion: nil)

     

        }

     

       

     

        //reset all the labels

     

        @IBAction func resetButton(sender: UIButton){

     

           reset()

     

        }

     

        

     

        func reset() {

     

            for label in allLabels{

     

                label.text = ""

     

            }

     

        }
     

        

     

    }
    
    

   


