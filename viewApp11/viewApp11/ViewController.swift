//
//  ViewController.swift
//  viewApp11
//
//  Created by Patipol Saechan on 16/6/2561 BE.
//  Copyright © 2561 Patipol Saechan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var input: UITextField!
    
    @IBAction func press(_ sender: Any) {
        label.text=input.text
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
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

