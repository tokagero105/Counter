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
    @IBOutlet weak var logText: UITextView!
    var counter: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        counterLabel.text = String(counter)
        logText.text = "История изменений:"
    }
    
    private func dateText() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "d.MM. hh:mm:ss"
        let dateString = dateFormatter.string(from: Date())
        return dateString
    }
    
    private func addLogs(_ text: String) {
        let date = dateText()
        let textForLogs = "\(date): \(text)"
        if let currentText = logText.text {
                    logText.text = "\(currentText)\n\(textForLogs)"
        }
    }
//        if let currentText = logText.text {
//            logText.text = "\(currentText)\n\(textForLogs)"
//        }
        
    
    @IBAction func plusButtonTouch(_ sender: Any) {
        counter += 1
        counterLabel.text = String(counter)
        let textForLogs = "Значение изменено на +1"
        addLogs(textForLogs)
    }
    
    @IBAction func minusButtonTouch(_ sender: Any) {
        counter -= 1
        if counter < 0 {
            counter = 0
            let textForLogs = "Попытка уменьшить значение счётчика ниже 0"
            addLogs(textForLogs)
            return
        }
        counterLabel.text = String(counter)
        let textForLogs = "Значение изменено на -1"
        addLogs(textForLogs)
    }
    
    @IBAction func counterResetTouch(_ sender: Any) {
        counter = 0
        counterLabel.text = String(counter)
        let textForLogs = "Значение сброшено"
        addLogs(textForLogs)
    }
}


