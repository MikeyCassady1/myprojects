//
//  ViewControllerTwo.swift
//  wordplay madlibs
//
//  Created by period8 on 1/11/22.
//

import UIKit

class ViewControllerTwo: UIViewController {

    
    
    @IBOutlet weak var labelOne: UILabel!
    
    
    @IBOutlet weak var textFieldTwo: UITextField!
    
    
    @IBOutlet weak var textFieldThree: UITextField!
    
    
    @IBOutlet weak var textFieldFour: UITextField!
    
    
    var madLibs = " "
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        labelOne.text = "My uncle wants to got to the " + madLibs + "."
        
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let nvc = segue.destination as! ViewControllerThree
        nvc.noun = textFieldTwo.text!
        nvc.verb = textFieldThree.text!
        nvc.adjective = textFieldFour.text!
    }

}
