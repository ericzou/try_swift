//
//  ViewController.swift
//  LoginApp
//
//  Created by Eric Zou on 8/7/14.
//  Copyright (c) 2014 Eric Zou. All rights reserved.
//

// how to use transition between views using segue: http://dipinkrishna.com/blog/2013/12/ios-login-screen-tutorial-xcode-5-ios-7-storyboard-json/2/
import UIKit

class ViewController: UIViewController {
                            
    @IBOutlet weak var username: UITextField!
    @IBOutlet weak var password: UITextField!
    
    @IBAction func signIn(sender: AnyObject) {
        self.performSegueWithIdentifier("FriendsViewController", sender: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

