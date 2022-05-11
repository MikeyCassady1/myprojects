//
//  ViewController.swift
//  UITextFieldsChallenge
//
//  Created by Bobby Orr
//  Copyright © 2021 MobileMakersEdu. All rights reserved.
//

import UIKit
                                        // MARK: Stretch #4 - Part I
class ViewController: UIViewController, UITextFieldDelegate {
    
    // MARK: - MVP - Part I
   
    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var enterName: UITextField!
    
    @IBOutlet weak var segmentedController: UISegmentedControl!
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        enterName.delegate = self
        // MARK: Stretch #4 - Part II
        
        
    }
    
    // MARK: - MVP - Part II
    
       
    func textFieldShouldClear(_ textField: UITextField) -> Bool {
        
        enterName.text = ""
        return true
    }
    
    
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        label.text = "Hello, " + enterName.text!
  
      
        
        
        
        
        return true
 }
   
    
    // MARK: - Stretch #3
    
    @IBAction func sayHello(_ sender: UIButton) {enterName.text = " " 
    }
    
    
    @IBAction func button(_ sender: UIButton) {resignFirstResponder()
    }
    
    @IBAction func indexChanged(_ sender: UISegmentedControl) {
        switch segmentedController.selectedSegmentIndex
            {
            case 0:
                label.text = "Bonjour, " + enterName.text!
            case 1:
                label.text = "Hello, " + enterName.text!
        case 2:
            label.text = "Hola, " + enterName.text!
        
        default:
                break
                
        
        
        
        }
        }
    
    
   
        
        
        
    
    
    
    // MARK: Stretch #4 - Part III
    
    
    


}
