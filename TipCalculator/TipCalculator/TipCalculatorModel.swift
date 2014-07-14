//
//  File.swift
//  TipCalculator
//
//  Created by Eric Zou on 7/13/14.
//  Copyright (c) 2014 Eric Zou. All rights reserved.
//

import Foundation

class TipCalculatorModel {
    var total: Double
    var taxPct: Double

    var subtotal: Double {
        get {
            return total / (taxPct + 1)
        }
    }
    
    init(total: Double, taxPct: Double) {
        self.total = total
        self.taxPct = taxPct
    }
    
    func calcTipWithTipPct(tipPct: Double) -> Double {
        return subtotal * tipPct
    }
    
    func printPossibleTips() {
        println("15%': \(calcTipWithTipPct(0.15))")
        println("18%': \(calcTipWithTipPct(0.18))")
        println("20%': \(calcTipWithTipPct(0.20))")
    }
    
    func returnPossibleTips() -> Dictionary<Int, Double> {
        let possibleTipInferred = [0.15, 0.18, 0.20]
    
        var retval = Dictionary<Int, Double>()
        for possibleTip in possibleTipInferred {
            let intPct = Int(possibleTip * 100)
            retval[intPct] = calcTipWithTipPct(possibleTip)
        }
        return retval
    }
    
}
