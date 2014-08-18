//
//  FriendsTableViewController.swift
//  LoginApp
//
//  Created by Eric Zou on 8/9/14.
//  Copyright (c) 2014 Eric Zou. All rights reserved.
//

import UIKit

extension Array {
    func contains<T: Equatable>(obj: T) -> Bool {
        return self.filter({ $0 as? T == obj }).count > 0
    }
}

func removeObject<T:Equatable>(inout arry: Array<T>, object: T) -> T? {
    if let found = find(arry, object) {
        return arry.removeAtIndex(found)
    }
    return nil
}


class FriendsTableViewController: UITableViewController, UITableViewDataSource, UITableViewDelegate {
    var friends = Friends()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.blackColor()
        var newSubView = UIView()
        newSubView.backgroundColor = UIColor.redColor()
        newSubView.frame = CGRectMake(0, self.view.frame.height - 60, self.view.frame.size.width, 60)
//        newSubView.bounds =
        self.view.addSubview(newSubView)
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    
    override func tableView(tableView: UITableView!, numberOfRowsInSection section: Int) -> Int {
        var letter = letters()[section]
        var people = (self.friends.peopleGroupedByLetters())[letter]!
        return people.count
    }
    
    override func tableView(tableView: UITableView!, cellForRowAtIndexPath indexPath: NSIndexPath!) -> UITableViewCell! {
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
    
    override func sectionIndexTitlesForTableView(tableView: UITableView!) -> [AnyObject]! {
        return letters()
    }
    
    override func numberOfSectionsInTableView(tableView: UITableView!) -> Int {
        return self.friends.peopleGroupedByLetters().count
    
    }
    
    override func tableView(tableView: UITableView!, titleForHeaderInSection section: Int) -> String! {
        return letters()[section]
    }
    
    func letters () -> [String] {
        return self.friends.sortedKeys();
    }

    override func tableView(tableView: UITableView!, didSelectRowAtIndexPath indexPath: NSIndexPath!) {
        var cell: CustomTableCellView = tableView.cellForRowAtIndexPath(indexPath) as CustomTableCellView
        
        if self.friends.selectedPeople.contains(cell.person!) {
            cell.cellImageView.image = UIImage(named: "unchecked_checkbox-48.png")
            removeObject(&self.friends.selectedPeople, cell.person!)
        } else {
            cell.cellImageView.image = UIImage(named: "checked_checkbox-48.png")
            self.friends.selectedPeople.append(cell.person!)
        }

    }
    
    override func tableView(tableView: UITableView!, heightForFooterInSection section: Int) -> CGFloat {
        return 100
    }
    
    
}

