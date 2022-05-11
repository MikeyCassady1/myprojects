//
//  ViewControllerTwo.swift
//  wordplay
//
//  Created by period8 on 12/13/21.
//

import UIKit

class ViewControllerTwo: UIViewController {

    @IBOutlet weak var labelOne: UILabel!
   
    @IBOutlet weak var textFieldTwo: UITextField!
    
    var favoriteMovie = " "
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        labelOne.text = favoriteMovie
        
        
        
        // Do any additional setup after loading the view.
   
    
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let nvc = segue.destination as! ViewControllerThree
        nvc.favoriteMovie = favoriteMovie
        nvc.favorite2 = textFieldTwo.text!
        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
