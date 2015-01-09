//
//  FirstViewController.swift
//  InvestoCalc
//
//  Created by Alex Peterson on 1/5/15.
//  Copyright (c) 2015 Alex Peterson. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    
    @IBOutlet weak var fullPriceDisplay1: UILabel!
    @IBOutlet weak var priceIn: UITextField!
    @IBOutlet weak var buyFeeIn: UITextField!
    @IBOutlet weak var sellFeeIn: UITextField!
    
    @IBAction func submit(sender: AnyObject) {
        
        var input=priceIn.text.toInt()
        var buyFee = buyFeeIn.text.toInt()
        var sellFee = sellFeeIn.text.toInt()
        var fees = buyFee! + sellFee!
        
        var perToEven: Double = (Double(fees)/Double(input!))*100
        
        fullPriceDisplay1.text = toString(perToEven) + "%"
        
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

