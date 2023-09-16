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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func startButtoClicked(_ sender: UIButton) {
        alphaAnimation()
    }
    
    func alphaAnimation() {
        self.imageView.alpha = 0
        
        UIView.animate(withDuration: 3, delay: 0) {
            self.imageView.alpha = 1
        }
    }
}

