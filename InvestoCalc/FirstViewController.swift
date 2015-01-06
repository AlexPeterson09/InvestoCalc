//
//  FirstViewController.swift
//  InvestoCalc
//
//  Created by Alex Peterson on 1/5/15.
//  Copyright (c) 2015 Alex Peterson. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    
    @IBOutlet weak var priceDisplay: UILabel!
    @IBOutlet weak var priceIn: UITextField!
    @IBAction func submit(sender: AnyObject) {
        var input=priceIn.text;
        let inputInt = input.toInt()
        priceDisplay.text = toString(inputInt)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.\
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

