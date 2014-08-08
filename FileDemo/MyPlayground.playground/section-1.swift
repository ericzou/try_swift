// Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


var paths = NSSearchPathForDirectoriesInDomains(NSSearchPathDirectory.DocumentDirectory, NSSearchPathDomainMask.UserDomainMask, true)
var error: NSErrorPointer = nil

var dirPath = paths[0] as String
var path = dirPath.stringByAppendingPathComponent("myFile.png")
var image: UIImage = UIImage(named:"Plus_300x250.png")
var data: NSData = UIImagePNGRepresentation(image)

data.writeToFile(path, atomically: true)

var rawData = NSData.dataWithContentsOfFile(path, options: NSDataReadingOptions.DataReadingMappedIfSafe, error: error)


var i = UIImage(data: rawData)




