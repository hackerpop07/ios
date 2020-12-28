//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by QuyVX on 25/12/2020.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    var bimValue: String?
    var advice: String?
    var color: UIColor?
    
    
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var bimLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        bimLabel.text = bimValue
        view.backgroundColor = color
        resultLabel.text = advice
    }
    
    @IBAction func recalculate(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
