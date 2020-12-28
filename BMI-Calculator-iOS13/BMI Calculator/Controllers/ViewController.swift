//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var heightUILabel: UILabel!
    @IBOutlet weak var weightUILabel: UILabel!
    @IBOutlet weak var heightUISlider: UISlider!
    @IBOutlet weak var weightUISlider: UISlider!
    
    var calculatorBrain = Calculator()
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func heightOnChange(_ sender: UISlider) {
        let height = String(format: "%.2f", sender.value)
        heightUILabel.text = "\(height)m"
    }
    
    @IBAction func weightOnChange(_ sender: UISlider) {
        let weight = String(format: "%.0f", sender.value)
        weightUILabel.text = "\(weight)Kg"
    }
    @IBAction func calculate(_ sender: UIButton) {
        let height = heightUISlider.value
        let weight = weightUISlider.value
        
        
        calculatorBrain.calculateBMI(height: height, weight: weight)
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bimValue = calculatorBrain.getBMIValue()
            destinationVC.advice = calculatorBrain.getAdvice()
            destinationVC.color = calculatorBrain.getColor()
        }
    }
}

