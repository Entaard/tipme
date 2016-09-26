//
//  ViewController.swift
//  Tipme
//
//  Created by Enta'ard on 9/25/16.
//  Copyright © 2016 Enta'ard. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    
    @IBOutlet var totalPriceLabels: [UILabel]!
    
    
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipControl: UISegmentedControl!
    let defaultTipPercentages = [0.1, 0.15, 0.2]
    var tipPercentages: [Double] = []
    let defaults = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Set default and current tips to storage
        tipPercentages = defaultTipPercentages
        defaults.set(tipPercentages, forKey: "tips")
        defaults.set(defaultTipPercentages, forKey: "defaultTips")
        defaults.synchronize()
        
        billField.becomeFirstResponder()
        
        // Set default text for billField
        billField.text = "$0"
    }
    override func viewWillAppear(_ animated: Bool) {
        // Reload tipPercentages to SegmentedControl
        tipPercentages = defaults.array(forKey: "tips") as? [Double] ?? [Double]()
        var tipText = "";
        for index in 0...(tipControl.numberOfSegments - 1) {
            tipText = String.init(format: "%.0f%@", tipPercentages[index] * 100, "%")
            tipControl.setTitle(tipText, forSegmentAt: index)
        }
        
        // Recalculate tips after changing setting
        calculateTip(billField)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @IBAction func onTap(_ sender: AnyObject) {
        view.endEditing(true)
    }
    
    @IBAction func removePreviousBill(_ sender: AnyObject) {
        // On start editing billField, remove previous bill
        billField.text = ""
    }

    
    @IBAction func calculateTip(_ sender: AnyObject) {
        // On text change, calculate things
        let bill = Double(billField.text!) ?? 0
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        tipLabel.text = tip.asLocaleCurrency
        for price in totalPriceLabels {
            price.text = (total / Double(price.tag)).asLocaleCurrency
        }
    }
    
}

