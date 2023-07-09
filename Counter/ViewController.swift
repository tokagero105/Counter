//
//  ViewController.swift
//  Counter
//
//  Created by Семен Титов on 09.07.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var plusCounterButton: UIButton!
    @IBOutlet weak var minusCounterButton: UIButton!
    @IBOutlet weak var counterLabel: UILabel!
    @IBOutlet weak var counterResetButton: UIButton!
    var counter: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        counterLabel.text = String(counter)
    }
    
    @IBAction func plusButtonTouch(_ sender: Any) {
        counter += 1
        counterLabel.text = String(counter)
    }
    
    @IBAction func minusButtonTouch(_ sender: Any) {
        counter = counter - 1
        if counter < 0 {
            counter = 0
        }
        counterLabel.text = String(counter)
    }
    
    @IBAction func counterResetTouch(_ sender: Any) {
        counter = 0
        counterLabel.text = String(counter)
    }
}

