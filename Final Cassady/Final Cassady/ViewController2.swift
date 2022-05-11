//
//  ViewController2.swift
//  Final Cassady
//
//  Created by period8 on 12/17/21.
//

import UIKit

class ViewController2: UIViewController {

    
    @IBOutlet weak var phsButton: UIButton!
    
   
    
    @IBOutlet weak var herseyButton: UIButton!
    
    
    @IBOutlet weak var whellingButton: UIButton!
    
    @IBOutlet weak var elkGroveButton: UIButton!
    
    @IBOutlet weak var rollingMeadowsButton: UIButton!
    
    
    @IBOutlet weak var bghsButton: UIButton!
    
    var alert = UIAlertController()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func phsButtonPressed(_ sender: UIButton) {
    
    
    let alert = UIAlertController(title: "801 W Kensington Rd, Mt Prospect, IL 60056", message: nil, preferredStyle: UIAlertController.Style.alert)
    
    let close = UIAlertAction(title: "Close", style: .default) { (action) in
        print("User tapped on Close")
    }
    alert.addAction(close)
    
    present(alert, animated: true, completion: nil)
    
        
    }
    

}
