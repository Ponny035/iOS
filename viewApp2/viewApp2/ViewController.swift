//
//  ViewController.swift
//  viewApp2
//
//  Created by Patipol Saechan on 17/6/2561 BE.
//  Copyright © 2561 Patipol Saechan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    
    @IBOutlet weak var switchControl: UISwitch!
    
    @IBOutlet weak var button: UIButton!
    
    @IBOutlet weak var label: UILabel!
    
    
    @IBAction func segmentedMethod(_ sender: Any) {
        let s = sender as! UISegmentedControl
        if s.selectedSegmentIndex == 0 {
            button.isHidden = false
            switchControl.isHidden = true
        }
        else {
            button.isHidden = true
            switchControl.isHidden = false
        }
    }
    
    @IBAction func switchMethod() {
        //let sw = sender as! UISwitch //one time
        if switchControl.isOn { // any time
            label.text = "Switch is on"
        }
        else {
            label.text = "Switch is off"
        }
    }
    
    @IBAction func buttonMethod() {
        label.text = "My button was press"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        button.isHidden = false
        switchControl.isHidden = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

