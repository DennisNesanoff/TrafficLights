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
    
    var traffic = ColorOfTraffic.off
    let isOff: CGFloat = 0.3
    let isOn: CGFloat = 1.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redColor.layer.cornerRadius = redColor.bounds.height / 2
        yellowColor.layer.cornerRadius = yellowColor.bounds.height / 2
        greenColor.layer.cornerRadius = greenColor.bounds.height / 2
        
        redColor.alpha = isOff
        yellowColor.alpha = isOff
        greenColor.alpha = isOff
    }

    @IBAction func setColor(_ sender: UIButton) {
        
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

