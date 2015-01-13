//
//  FirstViewController.swift
//  InvestoCalc
//
//  Created by Alex Peterson on 1/5/15.
//  Copyright (c) 2015 Alex Peterson. All rights reserved.
//

import UIKit
//var displayList:[UILabel]
class FirstViewController: UIViewController {
    
    //Data In
    @IBOutlet weak var priceIn: UITextField!
    @IBOutlet weak var buyFeeIn: UITextField!
    @IBOutlet weak var sellFeeIn: UITextField!
    @IBOutlet weak var custSharesIn: UITextField!
    
    //Data Out
    @IBOutlet weak var fullPriceDisplay1: UILabel!
    @IBOutlet weak var fullPriceDisplay2: UILabel!
    @IBOutlet weak var fullPriceDisplay3: UILabel!
    @IBOutlet weak var fullPriceDisplay4: UILabel!
    @IBOutlet weak var fullPriceDisplay5: UILabel!
    @IBOutlet weak var fullPriceDisplay10: UILabel!
    @IBOutlet weak var fullPriceDisplayCust: UILabel!
    @IBOutlet weak var custSharesDisplay: UILabel!
    //var displayList: [UILabel!]() = [fullPriceDisplay1, fullPriceDisplay2, fullPriceDisplay3, fullPriceDisplay4, fullPriceDisplay5, fullPriceDisplay10, fullPriceDisplayCust]
    //displayList.append(fullPriceDisplay1)
    
    @IBAction func submit(sender: AnyObject) {
        
        var input = Double(priceIn.text)
        var buyFee = Double(buyFeeIn.text.toInt()!)
        var sellFee = Double(sellFeeIn.text.toInt()!)
        var custShares = custSharesIn.text.toInt()
        
        func findFullPrice(fees: Double, price: Double, shares: Int, display: UILabel) {
            
            var dub: Double = fees/(price*Double(shares))
            display.text = NSString(format: "%.2f", dub) + "%"
            
        }
        
        findFullPrice(buyFee+sellFee, input, 1, fullPriceDisplay1)
        findFullPrice(buyFee+sellFee, input, 2, fullPriceDisplay2)
        findFullPrice(buyFee+sellFee, input, 3, fullPriceDisplay3)
        findFullPrice(buyFee+sellFee, input, 4, fullPriceDisplay4)
        findFullPrice(buyFee+sellFee, input, 5, fullPriceDisplay5)
        findFullPrice(buyFee+sellFee, input, 10, fullPriceDisplay10)
        findFullPrice(buyFee+sellFee, input, custShares!, fullPriceDisplayCust)
        
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

