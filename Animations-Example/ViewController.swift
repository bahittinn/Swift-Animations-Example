//
//  ViewController.swift
//  Animations-Example
//
//  Created by Bahittin on 16.09.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var startButton: UIButton!
    @IBOutlet weak var exampleLabel: UILabel!
    
    @IBOutlet weak var animationButton: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button1: UIButton!
    
    var animationState:Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        animationButton.layer.cornerRadius = animationButton.frame.size.width / 2
        button1.layer.cornerRadius = button1.frame.size.width / 2
        button2.layer.cornerRadius = button2.frame.size.width / 2
        
        button1.alpha = 0
        button2.alpha = 0
        self.button1.transform = CGAffineTransform(scaleX: 0.1, y: 0.1)
        self.button2.transform = CGAffineTransform(scaleX: 0.1, y: 0.1)
    }
    
    @IBAction func startButtoClicked(_ sender: UIButton) {
        //alphaAnimation()
        scaleAnimation()
    }
    
    func alphaAnimation() {
        self.imageView.alpha = 0
        
        UIView.animate(withDuration: 3, delay: 0) {
            self.imageView.alpha = 1
        }
    }
    
    func scaleAnimation() {
        UIView.animate(withDuration: 3, delay: 0) {
            self.imageView.transform = CGAffineTransform(scaleX: 2, y: 2)
        }
    }
    
    @IBAction func animationButtonClicked(_ sender: UIButton) {
        UIView.animate(withDuration: 0.5, delay: 0) {
            if self.animationState {
                self.button1.alpha = 0
                self.button2.alpha = 0
                
                self.animationButton.transform = CGAffineTransform(rotationAngle: 0 * .pi/180)
                self.button1.transform = CGAffineTransform(scaleX: 0.1, y: 0.1)
                self.button2.transform = CGAffineTransform(scaleX: 0.1, y: 0.1)
                
                self.animationState = false
                
            } else {
                self.button1.alpha = 1
                self.button2.alpha = 1
                
                self.animationButton.transform = CGAffineTransform(rotationAngle: 45 * .pi/180)
                self.button1.transform = CGAffineTransform(scaleX: 1, y: 1)
                self.button2.transform = CGAffineTransform(scaleX: 1, y: 1)
                
                self.animationState = true
            }
        }
    }
}

