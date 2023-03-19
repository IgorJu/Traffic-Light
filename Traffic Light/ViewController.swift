//
//  ViewController.swift
//  Traffic Light
//
//  Created by Igor on 18.03.2023.
//

import UIKit

final class ViewController: UIViewController {
    
    @IBOutlet private var redView: UIView!
    @IBOutlet private var yellowView: UIView!
    @IBOutlet private var greenView: UIView!
    
    @IBOutlet private var startButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redView.layer.cornerRadius = redView.frame.height / 2
        yellowView.layer.cornerRadius = yellowView.frame.height / 2
        greenView.layer.cornerRadius = greenView.frame.height / 2
        startButton.layer.cornerRadius = 10
    }
    
    @IBAction private func changingColor() {
        if startButton.titleLabel?.text != "NEXT" {
            redView.alpha = 1.0
            yellowView.alpha = 0.3
            startButton.setTitle("NEXT", for: .normal)
        } else if redView.alpha == 1.0 {
            redView.alpha = 0.3
            yellowView.alpha = 1.0
        } else if yellowView.alpha == 1.0 {
            greenView.alpha = 1.0
            yellowView.alpha = 0.3
        } else if greenView.alpha == 1.0 {
            redView.alpha = 1.0
            greenView.alpha = 0.3
        }
    }
}


