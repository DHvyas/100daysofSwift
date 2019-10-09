//
//  ViewController.swift
//  CommonInputControls
//
//  Created by Dhruv Vyas on 08/10/19.
//  Copyright © 2019 Dhruv Vyas. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var button: UIButton!
    @IBOutlet weak var toggle: UISwitch!
    @IBOutlet weak var slider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    button.addTarget(self, action : #selector(buttonTapped(_:)), for: .touchUpInside)
    @IBAction func buttonTapped(_ sender: Any) {
        print("Button was tapped!")
        if(toggle.isOn){
            print("The Switch is ON")
        }
        else { print("The Switch is OFF")}
        print("The Slider's value is : \(slider.value)")
    }
    
    @IBAction func respondToTapGesture(_ sender: UITapGestureRecognizer) {
        let location = sender.location(in: view)
        print(location)
    }
    
}

