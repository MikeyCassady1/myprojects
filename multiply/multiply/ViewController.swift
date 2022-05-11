//
//  ViewController.swift
//  multiply
//
//  Created by period8 on 10/8/21.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var textfield1: UITextField!
    
    @IBOutlet weak var answerLabel: UILabel!
    
    @IBOutlet weak var textfield2: UITextField!
    
    @IBOutlet weak var imageViewOne: UIImageView!
    
    @IBOutlet weak var funnyImage1: UIImageView!
    
    @IBOutlet weak var funnyImage2: UIImageView!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    
    @IBAction func buttonOne(_ sender: UIButton) {resignFirstResponder()
    }
    
    
    @IBAction func button1(_ sender: UIButton) {
        let text = (textfield1.text! as NSString).integerValue * (textfield2.text! as NSString).integerValue
        answerLabel.text = "\(text)"
        textfield1.text = ""
        textfield2.text = ""
        if (text == 64) {imageViewOne.image = UIImage (named: "download")
            if text % 2 == 0 {funnyImage1.image = UIImage(named: "download-1")
                
            }
            else {funnyImage2.image = UIImage(named: "download-2")
            }

                
        }
        
    
    
    
    
    
    
    }
    
}
