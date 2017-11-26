//
//  SettingsViewController.swift
//  Tip Calculator
//
//  Created by Shaurya Sinha on 19/11/17.
//  Copyright © 2017 Shaurya Sinha. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var settingsSegmentedControl: UISegmentedControl!
    
    let defaults = UserDefaults.standard
    var defaultTip = String()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        defaults.set(0, forKey: "0")
        defaults.set(1, forKey: "1")
        defaults.set(2, forKey: "2")
        defaults.synchronize()
        self.settingsSegmentedControl.selectedSegmentIndex = defaults.integer(forKey: defaultTip)
        
        // Do any additional setup after loading the view.
    }
    @IBAction func setDefaultTip(_ sender: UISegmentedControl) {
        //let a = String(sender.selectedSegmentIndex.selectedSegmentIndex)
        //self.defaultTip = a
        
        //defaults.set(self.settingsSegmentedControl.selectedSegmentIndex, forKey: a)
        defaults.synchronize()
    }
    
    
    
    

    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
