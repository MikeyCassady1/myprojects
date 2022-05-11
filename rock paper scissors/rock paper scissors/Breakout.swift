//
//  Breakout.swift
//  rock paper scissors
//
//  Created by period8 on 4/5/22.
//

import UIKit

class Breakout: UIViewController, UICollisionBehaviorDelegate {

    @IBOutlet weak var paddle: UIView!
    
    
    
    @IBOutlet weak var ball: UIView!
    
    var dynamicAnimator: UIDynamicAnimator!
    
    var ballDynamic: UIDynamicItemBehavior!
    
    var paddleDynamic: UIDynamicItemBehavior!
    
    var pushBeahvior: UIPushBehavior!
    
    var collisonBehavior: UICollisionBehavior!
    var brick: UIView!
    var bricks = [UIView]()
    var brickDynamicAnimator: UIDynamicItemBehavior!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        ball.layer.cornerRadius = 25
    dynamicAnimator = UIDynamicAnimator(referenceView: view)
        
        pushBeahvior = UIPushBehavior( items: [ball], mode: .instantaneous)
        pushBeahvior.pushDirection = CGVector(dx: 3, dy: 3)
        pushBeahvior.active = true
        pushBeahvior.magnitude = 2.3
        dynamicAnimator.addBehavior(pushBeahvior)
        
        for i in 0...6 {
            for r in 0...6 {
                brick = UIView(frame: CGRect(x: CGFloat(Double(i*50)+17.5), y: CGFloat(r*40+100), width: 40, height: 30))
                brick.backgroundColor = UIColor.systemTeal
                view.addSubview(brick)
                bricks.append(brick)
            }
            brickDynamicAnimator = UIDynamicItemBehavior(items: bricks)
            dynamicAnimator.addBehavior(brickDynamicAnimator)
        }
        
        
        
        collisonBehavior = UICollisionBehavior(items:[ball, paddle])
        collisonBehavior.collisionMode = .everything
        collisonBehavior.translatesReferenceBoundsIntoBoundary = true
        
        dynamicAnimator.addBehavior(collisonBehavior)
        
        paddleDynamic = UIDynamicItemBehavior(items: [paddle])
        paddleDynamic.density = 10000
    }
    
    @IBAction func panGestureMoved(_ sender: UIPanGestureRecognizer) {
        paddle.center = CGPoint(x: sender.location(in: view).x, y: paddle.center.y)
        dynamicAnimator.updateItem(usingCurrentState: paddle)
    }
    
   
}
