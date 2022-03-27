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
        redView.alpha = 1
    }
    
}

