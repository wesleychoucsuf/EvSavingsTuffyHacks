//
//  Savings.swift
//  EV Savings
//
//  Created by Wesley Chou on 3/27/21.
//

import Foundation
struct Calculation {
    var mpg: Double?
    var gasPrice: Double?
    var mileage: Double?
    var total :Double
    var htotal :Double
    var charging :Double
    var gallonsUsed : Double
    var printOut : String
    init?() {
        self.mpg = 0
        self.gasPrice = 0
        self.mileage = 0
            total = 0.0
            gallonsUsed = 0.0
        charging = 0.0
            printOut = ""
        htotal = 0.0
    }
    mutating func calc (mpg :Double, gasPrice :Double, mileage:Double){
        gallonsUsed = mileage/mpg
        total = gallonsUsed * gasPrice
        charging = (mileage/4.5) * 0.15
        htotal = total - charging
        let finalHtotal = Double(round(100*htotal)/100)
        let finalTotal = Double(round(100*total)/100)
        printOut = "Savings with free charging: $\(finalTotal) \nSavings charging at home: $\(finalHtotal)"
        
    }
}
