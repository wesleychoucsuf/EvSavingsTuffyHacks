//
//  ViewController.swift
//  EV Savings
//
//  Created by Wesley Chou on 3/27/21.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var mpg: UITextField!
    @IBOutlet var miles: UITextField!
    @IBOutlet var gasPrice: UITextField!
    @IBOutlet var textView: UITextView!
    @IBOutlet var myImageView: UIImageView!
    var calculation = Calculation()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calculate(_ sender: UITextField) {
        let mile = Double(miles.text!)
        let gasPrices = Double(gasPrice.text!)
        let mpgs = Double(mpg.text!)
        calculation?.calc(mpg: mpgs!, gasPrice: gasPrices!, mileage: mile!)
    
        mpg?.text = ""
        miles?.text = ""
        gasPrice?.text = ""
        print(calculation!.printOut)
        textView.text = calculation?.printOut
    }
    
}
