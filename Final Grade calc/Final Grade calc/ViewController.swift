//
//  ViewController.swift
//  Final Grade calc
//
//  Created by period8 on 11/12/21.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var textLabelOne: UILabel!
    
    
    @IBOutlet weak var textFieldOne: UITextField!
    
    
    @IBOutlet weak var textFieldTwo: UITextField!
    
    
    @IBOutlet weak var textFieldThree: UITextField!
    
    
    @IBOutlet weak var imageViewOne: UIImageView!
    
    
    @IBOutlet weak var buttonOne: UIButton!
    
    var requiredScore = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
}

    @IBAction func buttonOne(_ sender: Any) {
        //Required = (Goal − Current × (100% − Final Weight)) / Final Weight
        
        let desiredGrade = Double(textFieldThree.text!)!
       
        let currentGrade = Double(textFieldOne.text!)!
      
        let finalWorth = Double(textFieldTwo.text!)! * 0.01
        
         requiredScore = Double((desiredGrade - (currentGrade * (1 - finalWorth))) / finalWorth)
        print(requiredScore)
    }
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let nvc = segue.destination as! ViewController3
        nvc.passedRequired = requiredScore
        
    }
    
}

