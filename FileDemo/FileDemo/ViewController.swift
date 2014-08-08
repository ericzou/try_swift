//
//  ViewController.swift
//  FileDemo
//
//  Created by Eric Zou on 8/4/14.
//  Copyright (c) 2014 Eric Zou. All rights reserved.
//

import Foundation
import UIKit


class ViewController: UIViewController {
                            
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        var paths = NSSearchPathForDirectoriesInDomains(NSSearchPathDirectory.DocumentDirectory, NSSearchPathDomainMask.UserDomainMask, true)
        var error: NSErrorPointer = nil
        
        var dirPath = paths[0] as String
        var path = dirPath.stringByAppendingPathComponent("myFile.png")
        var image: UIImage = UIImage(named:"Pulse_300x250.png")
        var data: NSData = UIImagePNGRepresentation(image)
        
        data.writeToFile(path, atomically: true)
        
        var rawData = NSData.dataWithContentsOfFile(path, options: NSDataReadingOptions.DataReadingMappedIfSafe, error: error)
        
        var i = UIImage(data: rawData)
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

