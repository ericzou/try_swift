//
//  ViewController.swift
//  HelloWorld
//
//  Created by Eric Zou on 7/15/14.
//  Copyright (c) 2014 Eric Zou. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var textField: UITextField
    @IBOutlet var textView: UITextView
    
    @IBOutlet var someButton: UIButton!
    
    @IBAction func foo(sender: AnyObject) {
        println("touched")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        textField.text = "Default text"
        textView.text = textField.text
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func valueChanged(sender: AnyObject) {
        textView.text = textField.text
    }


}

