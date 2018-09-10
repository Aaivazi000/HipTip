//
//  ViewController.swift
//  HipTip
//
//  Created by Andriana Aivazians on 9/8/18.
//  Copyright © 2018 Andriana Aivazians. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    
    //Label & Text Field Declarations
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    @IBOutlet weak var peopleField: UITextField!
    @IBOutlet weak var splitLabel: UILabel!
    @IBOutlet weak var payLabel: UILabel!
    
    //Default Code
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //Keyboard Minimize Action
    @IBAction func OnTap(_ sender: Any) {
     view.endEditing(true)
    }


    //Tip Calculator
    @IBAction func calculateTip(_ sender: Any){
        
        //Tip Calculation
        let tipPercentages = [0.12,0.15,0.20]
        let bill = Double(billField.text!) ?? 0
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let split = Double(peopleField.text!) ?? 1
        let total = bill + tip
        let splitTotal = total/split
        //Assign Calculations to Labels
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        payLabel.text = String(format: "$%.2f", splitTotal)
        
    }
    
}

