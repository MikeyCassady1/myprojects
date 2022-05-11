//
//  ViewController.swift
//  composition
//
//  Created by period8 on 3/28/22.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var jobTextField: UITextField!
    
    
    @IBOutlet weak var salaryTextField: UITextField!
    
    
    @IBOutlet weak var outputTextField: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    
        
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if let name = nameTextField.text, let jobDescription = jobTextField.text, let salary = salaryTextField.text {
            
            if let salaryAmount = Int(salary) {
                let myJob = ViewControllerTwo(description: jobDescription, salary: salaryAmount)
                
                let person = person(name: name, job: myJob)
                
                var output = "Name: \(person.name)"
                output += "Job: \(person.job.description)"
                output += "Salary: \(person.job.salary)"
                
                outputTextField.text = output
            }
            
        }
        return true
    }

}

