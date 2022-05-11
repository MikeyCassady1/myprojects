//
//  ViewController.swift
//  UIImageViewChallenge
//
//  Created by Ricky Bobby
//  Copyright © 2021 MobileMakersEdu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //MARK: - MVP
    
    @IBOutlet weak var changeMeButton: UIButton!
    @IBOutlet weak var disappearingImageView: UIImageView!
    
    
    //MARK: - Stretch #3 - Part I
    
    
    
    @IBOutlet weak var slider: UISlider!
    var sliderValue: Double!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func whenSliderMoved(_ slider: UISlider) {
        //TODO: - MVP, Uncomment the line below
disappearingImageView.alpha = CGFloat(slider.value)
        
        //MARK: - Stretch #3 - Part II
        
        
        
    }
    
    //MARK: - Stretch #1 and #2
    
    @IBAction func button1(_ sender: Any) {
        disappearingImageView.image = UIImage(named: "download")
    }
    
    
    }
    
    


