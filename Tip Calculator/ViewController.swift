//
//  ViewController.swift
//  Tip Calculator
//
//  Created by Shaurya Sinha on 05/11/17.
//  Copyright © 2017 Shaurya Sinha. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tip: UILabel!
    @IBOutlet weak var total: UILabel!
    @IBOutlet weak var billTextField: UITextField!
    @IBOutlet weak var tipSegmentedControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        let tipPercentages = [0.15, 0.20, 0.22]
        
        let bill = Double(billTextField.text!) ?? 0
        let tip = bill * tipPercentages[tipSegmentedControl.selectedSegmentIndex]
        let total = bill + tip
        
        self.tip.text = String.init(format: "$%0.2f", tip)
        self.total.text = String.init(format: "$%0.2f", total)
    }
}

