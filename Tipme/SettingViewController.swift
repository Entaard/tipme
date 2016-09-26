//
//  SettingViewController.swift
//  Tipme
//
//  Created by Enta'ard on 9/25/16.
//  Copyright © 2016 Enta'ard. All rights reserved.
//

import UIKit

class SettingViewController: UIViewController {
    
    @IBOutlet weak var okTipField: UITextField!
    @IBOutlet weak var goodTipField: UITextField!
    @IBOutlet weak var awesomeTipField: UITextField!
    let defaults = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tipsPercentages = defaults.array(forKey: "tips") as? [Double] ?? [Double]()
        
        okTipField.text = String.init(format: "%.0f", tipsPercentages[0] * 100)
        goodTipField.text = String.init(format: "%.0f", tipsPercentages[1] * 100)
        awesomeTipField.text = String.init(format: "%.0f", tipsPercentages[2] * 100)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func changeTipRate(_ sender: AnyObject) {
        saveNewTips()
    }
    
    @IBAction func onTap(_ sender: AnyObject) {
        view.endEditing(true)
    }
    
    @IBAction func restoreDefaultTips(_ sender: AnyObject) {
        let tipsPercentages = defaults.array(forKey: "defaultTips") as? [Double] ?? [Double]()
        
        okTipField.text = String.init(format: "%.0f", tipsPercentages[0] * 100)
        goodTipField.text = String.init(format: "%.0f", tipsPercentages[1] * 100)
        awesomeTipField.text = String.init(format: "%.0f", tipsPercentages[2] * 100)
        
        saveNewTips()
    }
    
    private func saveNewTips() {
        
        let okTip = (Double(okTipField.text!) ?? 0) / 100
        let goodTip = (Double(goodTipField.text!) ?? 0) / 100
        let awesomeTip = (Double(awesomeTipField.text!) ?? 0) / 100
        
        let newTipsPercentages = [okTip, goodTip, awesomeTip]
        defaults.set(newTipsPercentages, forKey: "tips")
        
        defaults.synchronize()
    }

}
