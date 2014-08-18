//
//  FriendsViewController.swift
//  LoginApp
//
//  Created by Eric Zou on 8/17/14.
//  Copyright (c) 2014 Eric Zou. All rights reserved.
//

import Foundation
import UIKit

class FriendsViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    var friends = Friends()
    var bottomView: BottomView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bottomView = BottomView()
        bottomView.backgroundColor = UIColor.clearColor().colorWithAlphaComponent(0.7)
        bottomView.frame = CGRectMake(0, self.view.frame.height - 50, self.view.frame.width, 50)
        bottomView.hidden = true
        bottomView.textLabel.frame = CGRectMake(20, 0, 150, 50)
        bottomView.textLabel.text = "2 People"
        bottomView.textLabel.textColor = UIColor.whiteColor()
        bottomView.addSubview(bottomView.textLabel)
        self.view.addSubview(bottomView)
    }
    
    func tableView(tableView: UITableView!, numberOfRowsInSection section: Int) -> Int {
        var letter = letters()[section]
        var people = (self.friends.peopleGroupedByLetters())[letter]!
        return people.count
    }
    
    func tableView(tableView: UITableView!, cellForRowAtIndexPath indexPath: NSIndexPath!) -> UITableViewCell! {
        var myCell: CustomTableCellView = tableView.dequeueReusableCellWithIdentifier("customCell") as CustomTableCellView
        var peopleGroupByLetters = self.friends.peopleGroupedByLetters()
        var letter = letters()[indexPath.section]
        var person: Person
        // no idea why we need to use Array!
        var people = (peopleGroupByLetters[letter] as Array!)
        if  people.count > indexPath.row {
            person = people[indexPath.row]
            myCell.titleLabel.text = person.name
            myCell.person = person
        }
        return myCell
    }
    
    func sectionIndexTitlesForTableView(tableView: UITableView!) -> [AnyObject]! {
        return letters()
    }
    
    func numberOfSectionsInTableView(tableView: UITableView!) -> Int {
        return self.friends.peopleGroupedByLetters().count
    }

    func tableView(tableView: UITableView!, titleForHeaderInSection section: Int) -> String! {
        return letters()[section]
    }
    
    func letters () -> [String] {
        return self.friends.sortedKeys();
    }
    
    func tableView(tableView: UITableView!, didSelectRowAtIndexPath indexPath: NSIndexPath!) {
        var cell: CustomTableCellView = tableView.cellForRowAtIndexPath(indexPath) as CustomTableCellView
        
        if self.friends.selectedPeople.contains(cell.person!) {
            cell.cellImageView.image = UIImage(named: "unchecked_checkbox-48.png")
            removeObject(&self.friends.selectedPeople, cell.person!)
        } else {
            cell.cellImageView.image = UIImage(named: "checked_checkbox-48.png")
            self.friends.selectedPeople.append(cell.person!)
        }
        
        if self.friends.selectedPeople.count > 0 {
            self.bottomView.hidden = false
        } else {
            self.bottomView.hidden = true
        }
    }



    
}