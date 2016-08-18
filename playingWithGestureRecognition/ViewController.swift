//
//  ViewController.swift
//  playingWithGestureRecognition
//
//  Created by Rebecca Bartels on 8/16/16.
//  Copyright © 2016 Rebecca Bartels. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    @IBOutlet weak var textField: UITextView!
    
    let tapRecGreenDragon = UITapGestureRecognizer()
    let tapRecBlackDragon = UITapGestureRecognizer()
    let tapRecMomAndBabyDragon = UITapGestureRecognizer()
    let tapRecPensiveDragon = UITapGestureRecognizer()
    let tapRecYellowDragon = UITapGestureRecognizer()
    let tapRecWhiteDragon = UITapGestureRecognizer()
    
    let tapRecTextField = UITapGestureRecognizer()
    
    let returnTapRec = UITapGestureRecognizer()
    
    var isBlurred: Bool = false
    
    
    @IBOutlet weak var blackdragon: UIImageView!
    @IBOutlet weak var yellowdragon: UIImageView!
    @IBOutlet weak var greendragon: UIImageView!
    @IBOutlet weak var whitedragon: UIImageView!
    @IBOutlet weak var pensivedragon: UIImageView!
    @IBOutlet weak var momandbabydragon: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textField.hidden = true
        
        
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
        whitedragon.userInteractionEnabled = true
        
        
        
        tapRecGreenDragon.addTarget(self, action: #selector(ViewController.tappedView))
        tapRecBlackDragon.addTarget(self, action: #selector(ViewController.tappedView))
        tapRecMomAndBabyDragon.addTarget(self, action: #selector(ViewController.tappedView))
        tapRecYellowDragon.addTarget(self, action: #selector(ViewController.tappedView))
        tapRecWhiteDragon.addTarget(self, action: #selector(ViewController.tappedView))
        tapRecPensiveDragon.addTarget(self, action: #selector(ViewController.tappedView))
        returnTapRec.addTarget(self, action: #selector(ViewController.tappedView))
        
        
        greendragon.addGestureRecognizer(tapRecGreenDragon)
        pensivedragon.addGestureRecognizer(tapRecPensiveDragon)
        whitedragon.addGestureRecognizer(tapRecWhiteDragon)
        blackdragon.addGestureRecognizer(tapRecBlackDragon)
        momandbabydragon.addGestureRecognizer(tapRecMomAndBabyDragon)
        yellowdragon.addGestureRecognizer(tapRecYellowDragon)
        textField.addGestureRecognizer(returnTapRec)
        
        
        
        
    }
    
    
    func tappedView(isBool: Bool) {
        
        
        if !UIAccessibilityIsReduceTransparencyEnabled() {
            print("hi")
            let blurEffect = UIBlurEffect(style: UIBlurEffectStyle.Dark)
            let blurEffectView = UIVisualEffectView(effect: blurEffect)
            
            if isBlurred == false {
                print("bye")
                
                blurEffectView.frame = self.view.bounds
                blurEffectView.autoresizingMask = .FlexibleWidth
                blurEffectView.autoresizingMask = .FlexibleHeight
                
                self.view.addSubview(blurEffectView)
                
                textField.hidden = false
                
                view.bringSubviewToFront(textField)
                
                isBlurred = true
                
            } else if returnTapRec.enabled == true {
                print("bonjour")
                if isBlurred == true {
                    print("nihao")
                    textField.hidden = true
                    for subview in view.subviews {
                        print("hola")
                        if subview is UIVisualEffectView {
                            subview.removeFromSuperview()
                            
                            
                            
                        }
                    }
                    
                    
                }
            }
        }
        
        
    }
    
}