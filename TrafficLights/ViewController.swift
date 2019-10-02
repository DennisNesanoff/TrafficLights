//
//  ViewController.swift
//  TrafficLights
//
//  Created by Dennis Nesanoff on 02/10/2019.
//  Copyright © 2019 Dennis Nesanoff. All rights reserved.
//

import UIKit

enum ColorOfTraffic {
    case red, yellow, green, off
}

class ViewController: UIViewController {
    @IBOutlet var redColor: UIView!
    @IBOutlet var yellowColor: UIView!
    @IBOutlet var greenColor: UIView!
    @IBOutlet var button: UIButton!
    
    private var traffic = ColorOfTraffic.off
    private let isOff: CGFloat = 0.3
    private let isOn: CGFloat = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redColor.alpha = isOff
        yellowColor.alpha = isOff
        greenColor.alpha = isOff
    }
    
    override func viewWillLayoutSubviews() {
        redColor.layer.cornerRadius = redColor.frame.height / 2
        yellowColor.layer.cornerRadius = yellowColor.frame.height / 2
        greenColor.layer.cornerRadius = greenColor.frame.height / 2
    }

    @IBAction func setColor(_ sender: UIButton) {
        
        button.setTitle("Next", for: .normal)
        
        switch traffic {
        case .off:
            redColor.alpha = isOn
            traffic = .red
        case .red:
            redColor.alpha = isOff
            yellowColor.alpha = isOn
            traffic = .yellow
        case .yellow:
            yellowColor.alpha = isOff
            greenColor.alpha = isOn
            traffic = .green
        case .green:
            greenColor.alpha = isOff
            redColor.alpha = isOn
            traffic = .red
        }
    }
    
}

