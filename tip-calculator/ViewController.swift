//
//  ViewController.swift
//  tip-calculator
//
//  Created by Olivia Muesse on 9/6/14.
//  Copyright (c) 2014 Olivia Muesse. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
                            
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipTitleLabel: UILabel!
    
    @IBOutlet weak var twoLabel: UILabel!
    @IBOutlet weak var threeLabel: UILabel!
    @IBOutlet weak var fourLabel: UILabel!
    
    @IBOutlet weak var oneImageView: UIImageView!
    @IBOutlet weak var twoImageView: UIImageView!
    @IBOutlet weak var threeImageView: UIImageView!
    @IBOutlet weak var fourImageView: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tipLabel.text = ""
        totalLabel.text = ""
        twoLabel.text = ""
        threeLabel.text = ""
        fourLabel.text = ""
        tipTitleLabel.text = ""
        
        oneImageView.hidden = (true)
        twoImageView.hidden = (true)
        threeImageView.hidden = (true)
        fourImageView.hidden = (true)
        
        billField.becomeFirstResponder()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onEditingChanged(sender: AnyObject) {
        var tipPercentages = [0.15, 0.2, 0.25]
        var tipPercentage = tipPercentages[tipControl.selectedSegmentIndex]
        
        var billAmount = NSString(string: billField.text).doubleValue
        var tip = billAmount * tipPercentage
        var total = billAmount + tip
        
        var two = total / 2
        var three = total / 3
        var four = total / 4
        
        tipLabel.text = "$\(tip)"
        totalLabel.text = "$\(total)"
        twoLabel.text = "$\(two)"
        threeLabel.text = "$\(three)"
        fourLabel.text = "$\(four)"
        
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        twoLabel.text = String(format: "$%.2f", two)
        threeLabel.text = String(format: "$%.2f", three)
        fourLabel.text = String(format: "$%.2f", four)
        tipTitleLabel.text = ("Tip")
        
        oneImageView.hidden = (false)
        twoImageView.hidden = (false)
        threeImageView.hidden = (false)
        fourImageView.hidden = (false)
    }

    @IBAction func onTap(sender: AnyObject) {
        view.endEditing(true)
    }
    
    @IBAction func onTap(sender: UISegmentedControl) {
        view.endEditing(true)
        
        
    }
    
}

