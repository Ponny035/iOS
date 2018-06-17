//
//  ViewController.swift
//  MyJump
//
//  Created by Patipol Saechan on 17/6/2561 BE.
//  Copyright © 2561 Patipol Saechan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var button: UIButton!
    // MARK: IBAction Funtions
    @IBAction func startStopMethod() {
        if imageView.isAnimating {
            imageView.stopAnimating()
            button.setTitle("jump", for: UIControlState.normal)
        }
        else {
            imageView.startAnimating()
            button.setTitle("sit", for: UIControlState.normal)
        }
    }
    
    @IBAction func speedMethod() {
        imageView.animationDuration = TimeInterval(2 - slider.value)
        imageView.startAnimating()
        button.setTitle("sit", for: UIControlState.normal)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        var imageList : [UIImage] = []
        for i in 1...20 {
            let fn = "frame-" + String(i) + ".png"
            let vImage = UIImage(named: fn)
            imageList.append(vImage!)
        }
        
        imageView.animationImages = imageList
        imageView.animationDuration = TimeInterval(1)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

