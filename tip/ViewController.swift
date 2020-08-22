//
//  ViewController.swift
//  tip
//
//  Created by Sydney Willis on 8/18/20.
//  Copyright © 2020 Codepath. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var totalLabel: UILabel!
    
    @IBOutlet weak var tipPercentageLabel: UILabel!
    
    @IBOutlet weak var billAmountTextField: UITextField!
    
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func onTap(_ sender: Any)
    {
        view.endEditing(true)
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        // To get the initial bill amount and calculate the tip
        let bill = Double (billAmountTextField.text!) ?? 0
        let tipPercentages = [0.15, 0.18, 0.20]
        
        // To calculate the tip and total
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        
        tipPercentageLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        
        
    }
    

}

