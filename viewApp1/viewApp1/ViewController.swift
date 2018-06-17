//
//  ViewController.swift
//  viewApp1
//
//  Created by Patipol Saechan on 16/6/2561 BE.
//  Copyright © 2561 Patipol Saechan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var userOutput:UILabel!
    @IBOutlet weak var userInput:UITextField!
    
    @IBAction func pressMe (sender:AnyObject) {
        userOutput.text=userInput.text
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

