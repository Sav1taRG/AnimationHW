//
//  ViewController.swift
//  AnimationHW
//
//  Created by Roman on 01.11.2022.
//

import UIKit
import SpringAnimation

class SpringAnimationViewController: UIViewController {

    // MARK: IB Outlets
    @IBOutlet var viewToAnimate: SpringView!
    @IBOutlet var paramDescLB: UILabel!
    
    // MARK: Private Properties
    private var randomAnimation = SpringAnimation.getRandomAnimations()
    
    // MARK: View Life Cycles Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        viewToAnimate.layer.cornerRadius = 10
        paramDescLB.text = randomAnimation.description
    }

    // MARK: IB Actions
    @IBAction func buttonTouched(_ sender: UIButton) {
        paramDescLB.text = randomAnimation.description
        
        viewToAnimate.animation = randomAnimation.preset
        viewToAnimate.curve = randomAnimation.curve
        viewToAnimate.force = randomAnimation.force
        viewToAnimate.duration = randomAnimation.duration
        viewToAnimate.delay = randomAnimation.delay
        
        viewToAnimate.animate()
        
        randomAnimation = SpringAnimation.getRandomAnimations()
       
        sender.setTitle("Run \(randomAnimation.preset)", for: .normal)
    }
    
}

