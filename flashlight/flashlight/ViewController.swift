//
//  ViewController.swift
//  flashlight
//
//  Created by period8 on 8/18/21.
//

import UIKit

class ViewController: UIViewController
{

    @IBOutlet weak var flashlightLabel: UILabel!
    
   
    override func viewDidLoad() {
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        view.backgroundColor=UIColor.blue
        
    }
    
    @IBAction func clickMeButton(_ sender: UIButton)
    {
        view.backgroundColor=UIColor.white

        flashlightLabel.text = "It is Friday"
 
    }
    
}

