//
//  People.swift
//  LoginApp
//
//  Created by Eric Zou on 8/9/14.
//  Copyright (c) 2014 Eric Zou. All rights reserved.
//

import Foundation

class Friends {
    var people: [Person] = []
    
    init() {
        people.append(Person(name: "ADAM"))
        people.append(Person(name: "BEEJI"))
        people.append(Person(name: "CHRIS"))
    }
}