// Playground - noun: a place where people can play

//import Foundation
//
//var a: Int?
//var b: String
//
//if a {
//    b = String(a!)
//} else {
//    b = "NO"
//}

import Foundation

var somePath = NSTemporaryDirectory()
//var somePath = NS
var path  = somePath.stringByAppendingPathComponent("someFile")
var str = "here is some money"
var error: NSErrorPointer = nil
str.writeToFile(path, atomically: true, encoding: NSUTF8StringEncoding, error: error)

var fm = NSFileManager.defaultManager()
var arry = fm.contentsOfDirectoryAtPath(somePath, error: nil)

