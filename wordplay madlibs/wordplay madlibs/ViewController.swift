//
//  ViewController.swift
//  wordplay madlibs
//
//  Created by period8 on 1/11/22.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var textFieldOne: UITextField!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
  
    
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let nvc = segue.destination as! ViewControllerTwo
        nvc.madLibs = textFieldOne.text!
        
    }

}

