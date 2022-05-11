//
//  ViewControllerThree.swift
//  wordplay madlibs
//
//  Created by period8 on 1/11/22.
//

import UIKit

class ViewControllerThree: UIViewController {

    
    @IBOutlet weak var labelTwo: UILabel!
    
    @IBOutlet weak var textFieldThree: UITextField!
    
    @IBOutlet weak var labelThree: UILabel!
    
    @IBOutlet weak var pressMeButton: UIButton!
    
    
    
    var noun = " "
    
    var verb = " "
    
    var adjective = " "
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        labelTwo.text = "The " + noun + " was " + verb + " when suddenly the " + adjective + " bat " + "came out of nowhere!"
    
        
        
    }
    
    
    @IBAction func pressMeButtonPressed(_ sender: UIButton) {
    
    
    let alert = UIAlertController(title: "😃", message: nil, preferredStyle: UIAlertController.Style.alert)
        
        let close = UIAlertAction(title: "Close", style: .default) { (action) in
            print("User tapped on Close")
        }
        alert.addAction()
    }

}
