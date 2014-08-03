// Playground - noun: a place where people can play

import Foundation




func sumOfMultiples(#mult1: Int, #mult2: Int, max:Int = 1000) -> Int{
    var runningTotal = 0

    for index in 0...max {
        if (index % 3 == 0 || index % 5 == 0) {
            runningTotal = runningTotal + index
        }
    }
    return runningTotal
}

sumOfMultiples(mult1: 10, mult2: 123, max: 1000)



