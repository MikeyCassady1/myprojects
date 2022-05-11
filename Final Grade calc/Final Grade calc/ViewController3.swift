//
//  ViewController3.swift
//  Final Grade calc
//
//  Created by period8 on 11/16/21.
//

import UIKit

class ViewController3: UIViewController {

    @IBOutlet weak var labelOne: UILabel!
    
    var passedRequired = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(passedRequired)
        
        labelOne.text = String(passedRequired)
    }
     
}
