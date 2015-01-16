//
//  SecondViewController.swift
//  InvestoCalc
//
//  Created by Alex Peterson on 1/5/15.
//  Copyright (c) 2015 Alex Peterson. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    
    //Data In
    @IBOutlet weak var priceIn: UITextField!
    @IBOutlet weak var buyFeeIn: UITextField!
    @IBOutlet weak var sellFeeIn: UITextField!
    @IBOutlet weak var perGrowthIn: UITextField!
    
    //Data Out
    @IBOutlet weak var sharesNeededOut: UILabel!
    
    @IBAction func submit(sender: AnyObject) {
        
        var input = (priceIn.text as NSString).doubleValue
        var buyFee = (buyFeeIn.text as NSString).doubleValue
        var sellFee = (sellFeeIn.text as NSString).doubleValue
        //var custShares = custSharesIn.text.toInt()

          //((10*F)/S)=G
        
        
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

