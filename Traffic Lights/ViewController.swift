//
//  ViewController.swift
//  Traffic Lights
//
//  Created by Александр on 27.03.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var redView: UIView!
    @IBOutlet weak var yellowView: UIView!
    @IBOutlet weak var greenView: UIView!
    
    @IBOutlet weak var startButton: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redView.layer.cornerRadius = 65
        yellowView.layer.cornerRadius = 65
        greenView.layer.cornerRadius = 65
        startButton.layer.cornerRadius = 15
    }

    @IBAction func pushStartButton() {

        if startButton.currentTitle == "START" {
            startButton.setTitle("NEXT", for: .normal)
        }
        
        if isLightOn(redView) {
            redView.alpha = 0.3
            yellowView.alpha = 1
        } else if isLightOn(yellowView) {
            yellowView.alpha = 0.3
            greenView.alpha = 1
        } else {
            greenView.alpha = 0.3
            redView.alpha = 1
        }
    }
    
    func isLightOn(_ color: UIView!) -> Bool {
        color.alpha == 1 ? true : false
    }
    
}

