//
//  ViewController.swift
//  playingWithGestureRecognition
//
//  Created by Rebecca Bartels on 8/16/16.
//  Copyright © 2016 Rebecca Bartels. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    

    
    let tapRecGreenDragon = UITapGestureRecognizer()
    let tapRecBlackDragon = UITapGestureRecognizer()
    let tapRecMomAndBabyDragon = UITapGestureRecognizer()
    let tapRecPensiveDragon = UITapGestureRecognizer()
    let tapRecYellowDragon = UITapGestureRecognizer()
    let tapRecWhiteDragon = UITapGestureRecognizer()
    
    let returnTapRec = UITapGestureRecognizer()
    
    
    @IBOutlet weak var blackdragon: UIImageView!
    @IBOutlet weak var yellowdragon: UIImageView!
    @IBOutlet weak var greendragon: UIImageView!
    @IBOutlet weak var whitedragon: UIImageView!
    @IBOutlet weak var pensivedragon: UIImageView!
    @IBOutlet weak var momandbabydragon: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()

        
        greendragon.image = UIImage.init(named: "greendragon")
        blackdragon.image = UIImage.init(named: "blackdragon")
        momandbabydragon.image = UIImage.init(named: "momandbabydragon")
        pensivedragon.image = UIImage.init(named: "pensivedragon")
        whitedragon.image = UIImage.init(named: "whitedragon")
        yellowdragon.image = UIImage.init(named: "yellowdragon")
        
        
        greendragon.userInteractionEnabled = true
        yellowdragon.userInteractionEnabled = true
        blackdragon.userInteractionEnabled = true
        pensivedragon.userInteractionEnabled = true
        momandbabydragon.userInteractionEnabled = true
        momandbabydragon.userInteractionEnabled = true

        
        tapRecGreenDragon.addTarget(self, action: #selector(ViewController.tappedView))
        tapRecBlackDragon.addTarget(self, action: #selector(ViewController.tappedView))
        tapRecMomAndBabyDragon.addTarget(self, action: #selector(ViewController.tappedView))
        tapRecYellowDragon.addTarget(self, action: #selector(ViewController.tappedView))
        tapRecWhiteDragon.addTarget(self, action: #selector(ViewController.tappedView))
        tapRecPensiveDragon.addTarget(self, action: #selector(ViewController.tappedView))
        
       
        
        greendragon.addGestureRecognizer(tapRecGreenDragon)
        pensivedragon.addGestureRecognizer(tapRecPensiveDragon)
        whitedragon.addGestureRecognizer(tapRecWhiteDragon)
        blackdragon.addGestureRecognizer(tapRecBlackDragon)
        momandbabydragon.addGestureRecognizer(tapRecMomAndBabyDragon)
        yellowdragon.addGestureRecognizer(tapRecYellowDragon)

    }

    
    func tappedView() {
        
    
        if !UIAccessibilityIsReduceTransparencyEnabled() {
            self.view.backgroundColor = UIColor.clearColor()
            
            let blurEffect = UIBlurEffect(style: UIBlurEffectStyle.Dark)
            let blurEffectView = UIVisualEffectView(effect: blurEffect)
            
            blurEffectView.frame = self.view.bounds
            blurEffectView.autoresizingMask = .FlexibleWidth
            blurEffectView.autoresizingMask = .FlexibleHeight
            
            self.view.addSubview(blurEffectView)
            
            
        } else {
            
            self.view.backgroundColor = UIColor.blackColor()
        }
        
        let blurEffect = UIBlurEffect(style: UIBlurEffectStyle.Dark)
        let blurEffectView = UIVisualEffectView(effect: blurEffect)

        blurEffectView.frame = greendragon.frame
        self.greendragon.addSubview(blurEffectView)
        blurEffectView.frame = momandbabydragon.frame
        self.momandbabydragon.addSubview(blurEffectView)
        blurEffectView.frame = pensivedragon.frame
        self.pensivedragon.addSubview(blurEffectView)
        blurEffectView.frame = blackdragon.frame
        self.whitedragon.addSubview(blurEffectView)
        blurEffectView.frame = whitedragon.frame
        self.blackdragon.addSubview(blurEffectView)
        blurEffectView.frame = yellowdragon.frame
        self.yellowdragon.addSubview(blurEffectView)
        
    }



}

