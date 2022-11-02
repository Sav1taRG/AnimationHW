//
//  ViewController.swift
//  AnimationHW
//
//  Created by Roman on 01.11.2022.
//

import UIKit
import SpringAnimation

class ViewController: UIViewController {

    @IBOutlet var viewToAnimate: SpringView!
    @IBOutlet var paramDescLB: UILabel!
    
    private var randomAnimation = SpringAnimation.getRandomAnimations()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewToAnimate.layer.cornerRadius = 10
        paramDescLB.text = randomAnimation.description
    }

    @IBAction func buttonTouched(_ sender: SpringButton) {
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

