//
//  ViewControllerThree.swift
//  wordplay
//
//  Created by period8 on 1/5/22.
//

import UIKit

class ViewControllerThree: UIViewController {

    
    @IBOutlet weak var labelTwo: UILabel!
    
    var favoriteMovie = " "
    var favorite2 = " "
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labelTwo.text = favoriteMovie + favorite2
       
        
        // Do any additional setup after loading the view.
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
