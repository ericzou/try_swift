//
//  CustomTableCell.swift
//  LoginApp
//
//  Created by Eric Zou on 8/16/14.
//  Copyright (c) 2014 Eric Zou. All rights reserved.
//

import Foundation
import UIKit

class CustomTableCellView: UITableViewCell {
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var cellImageView: UIImageView!
    var person: Person? = nil;
}