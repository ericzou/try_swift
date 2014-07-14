// Playground - noun: a place where people can play

import Cocoa

var str = "Hello, playground"

class TipCalculator {
    let total: Double
    let taxPct: Double
    let subtotal: Double
    
    init(total: Double, taxPct: Double) {
        self.total = total
        self.taxPct = taxPct
        subtotal = total / (taxPct + 1)
    }
    
    func calcTipWithTipPct(tipPct: Double) -> Double {
        return subtotal * tipPct
    }
    
    func printPossibleTips() {
        println("15%': \(calcTipWithTipPct(0.15))")
        println("18%': \(calcTipWithTipPct(0.18))")
        println("20%': \(calcTipWithTipPct(0.20))")
    }
    
    func returnPossibleTips() -> <Int: Double> {
        let possibleTipsInferred = [0.15, 0.18, 0.20]
    
        var retval = Dictionary<Int,Double>()
        for possibleTip in possibleTipsInferred {
            let intPct = Int(possibleTip * 100)
            retval[intPct] = calcTipWithTipPct(possibleTip)
        }
    }
    
    
    
}


let tipCalc = TipCalculator(total: 44.23, taxPct: 0.06)
tipCalc.printPossibleTips()
