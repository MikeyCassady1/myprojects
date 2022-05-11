//
//  ViewController.swift
//  wordplay
//
//  Created by period8 on 12/13/21.
//

import UIKit

class ViewController: UIViewController {

  
    @IBOutlet weak var textField: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let nvc = segue.destination as! ViewControllerTwo
        nvc.favoriteMovie = textField.text!
        
    }

}

