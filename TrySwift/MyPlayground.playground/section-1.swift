// Playground - noun: a place where people can play

import Cocoa

var number = 10;

func f(number:Int)-> Int {
    if number <= 1 {
        return 1
    } else {
        return f(number-1) + f(number - 2)
    }
}

f(number)


import XCPlayground;

let frame = NSRect(x: 0, y:0, width: 200, height: 200)


var j = 2

for var i = 0; i < 5; ++i {
    j * i
}
