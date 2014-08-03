//
//  ViewController.swift
//  todo
//
//  Created by Eric Zou on 7/22/14.
//  Copyright (c) 2014 Eric Zou. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITextFieldDelegate {
    
    let lightOrange:UIColor = UIColor(red: 0.996, green: 0.467, blue: 0.224, alpha: 1)
    let medOrange:UIColor = UIColor(red: 0.973, green: 0.338, blue: 0.173, alpha: 1)
    let darkOrange:UIColor = UIColor(red: 0.7, green: 0.2, blue: 0.1, alpha: 1)
    let green:UIColor = UIColor(red: 0.251, green: 0.831, blue: 0.494, alpha: 1)
    let white:UIColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)

    var tableView: UITableView!
    var textField: UITextField!
    var tableViewData = [String]()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tableView = UITableView(frame: CGRectMake(0, 100, self.view.bounds.size.width, self.view.bounds.size.height - 100),
            style: UITableViewStyle.Plain)
        tableView.backgroundColor = darkOrange
        
        self.view.addSubview(tableView)
        
        textField = UITextField(frame: CGRectMake(0, 0, self.view.bounds.size.width, 100))
        textField.backgroundColor = lightOrange
        textField.delegate = self
        
        self.view.addSubview(textField)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // tableView delegate
    func tableView(tableView: UITableView!, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var myNewCell: MyTableViewCell = tableView.dequeueReusableCellWithIdentifier("mycell", forIndexPath: indexPath) as MyTableViewCell
        myNewCell.selectionStyle = UITableViewCellSelectionStyle.None
        myNewCell.textLabel.text = self.tableViewData[indexPath.row]
        
        return myNewCell
    }
    

    //textField delegate
    func textFieldShouldReturn(textField: UITextField!) -> Bool {
        tableViewData.append(textField.text)
        textField.text = ""
        self.tableView.reloadData()
        textField.resignFirstResponder()
        
        return true
    }

}

