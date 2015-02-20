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
        
        var price = (priceIn.text as NSString).doubleValue
        var buyFee = (buyFeeIn.text as NSString).doubleValue
        var sellFee = (sellFeeIn.text as NSString).doubleValue
        var perGrowth = (perGrowthIn.text as NSString).doubleValue

        //((10*F)/S)=G
        //^NOT RIGHT;need to find # of shares, not % Growth(G)
        //(((G/100)P)/F)=S
        
        var shares = (buyFee+sellFee)/((perGrowth/100)*price)
        
        //NSString(format: "%.2f",(((perGrowth/100)*price)/(buyFee+sellFee)))
        //GOAL: Round UP to whole # of shares; display actuall # of shares in ()
        //IDEA: if (Double(Shares) > Int(Shares)) then print: Int(Shares + 1); else print: Int(Shares)
        
        if (shares > Double(Int(shares))) {
            shares = Double(Int(shares.advancedBy(1)))
        } else {
            shares = Double(Int(shares))
        }
        
        sharesNeededOut.text = (String(format:"%.0f", shares)+"\n"+"shares")
        
        
    }

    override func touchesBegan(touches: (NSSet!), withEvent event: UIEvent) {
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