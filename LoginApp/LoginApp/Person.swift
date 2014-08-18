//
//  Person.swift
//  LoginApp
//
//  Created by Eric Zou on 8/9/14.
//  Copyright (c) 2014 Eric Zou. All rights reserved.
//

import Foundation


func == (lhs:Person,rhs:Person) -> Bool {
    return lhs.name == rhs.name
}

class Person: Equatable {
    var name: String
    
    init(name: String) {
        self.name = name
    }
}