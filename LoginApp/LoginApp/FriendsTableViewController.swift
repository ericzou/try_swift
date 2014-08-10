//
//  FriendsTableViewController.swift
//  LoginApp
//
//  Created by Eric Zou on 8/9/14.
//  Copyright (c) 2014 Eric Zou. All rights reserved.
//

import UIKit

class FriendsTableViewController: UITableViewController, UITableViewDataSource, UITableViewDelegate {
    var friends = Friends()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    
    override func tableView(tableView: UITableView!, numberOfRowsInSection section: Int) -> Int {
        return self.friends.people.count
    }
    
    override func tableView(tableView: UITableView!, cellForRowAtIndexPath indexPath: NSIndexPath!) -> UITableViewCell! {
        var myCell: UITableViewCell = UITableViewCell()
        myCell.textLabel.text = self.friends.people[indexPath.row].name
        return myCell
    }
    
}

