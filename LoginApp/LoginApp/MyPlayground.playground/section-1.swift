// Playground - noun: a place where people can play

import Foundation

//class Person {
//    var name: String
//    
//    init(name: String) {
//        self.name = name
//    }
//    
//    func setName(name: String) {
//        
//    }
//}
//
//var person = Person(name: "Abc")
//
//
////var a = ("A"..."Z")
//
//var a = "adfsadfa"
//
//countElements(a)
//
//for b in enumerate(1...3) {
//    println(b)
//}
////var c = [String](a)
//
//
//
//
//


class Person {
    var name: String
    
    init(name: String) {
        self.name = name
    }
}

var people = [Person(name: "adam"), Person(name: "chris"), Person(name: "molia"), Person(name: "alice")]


var firstPerson = people.first!
var ret: [Character: [Person]] = [:]

for person in people {
    var letter = Array(person.name)[0]
    var group = ret[letter]
    if group != nil {
        group?.append(person)
    } else {
        println("no group")
        ret[letter] = [person]
    }
}


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
        people = []
        people.append(Person(name: "Destiny Ference"))
        people.append(Person(name: "Herma Porcelli"))
        people.append(Person(name: "Daisey Serino"))
        people.append(Person(name: "Alison Kollman"))
        people.append(Person(name: "Lecia Tacy"))
        people.append(Person(name: "Tommye Mckennon"))
        people.append(Person(name: "Letitia Jaycox"))
        people.append(Person(name: "Carlo Desouza"))
        people.append(Person(name: "Indira Ovellette"))
        people.append(Person(name: "Ernest Kilman"))
        people.append(Person(name: "Ashlie Reichenbach"))
        people.append(Person(name: "Pearle Limberg"))
        people.append(Person(name: "Wally Hottle"))
        people.append(Person(name: "Shantelle Francisco"))
        people.append(Person(name: "Su Buckholz"))
        people.append(Person(name: "Danielle Alequin"))
        people.append(Person(name: "Lashandra Fullmer"))
        people.append(Person(name: "Rosio Didion"))
        people.append(Person(name: "Nakesha Absher"))
        people.append(Person(name: "Charley Dungy"))
        people.append(Person(name: "Ezequiel Doles"))
        people.append(Person(name: "Princess Jetton"))
        people.append(Person(name: "Nicolasa Helmers"))
        people.append(Person(name: "Garnet Aitchison"))
        people.append(Person(name: "Tatum Geary"))
        people.append(Person(name: "Reatha Devino"))
        people.append(Person(name: "Luke Pomerantz"))
        people.append(Person(name: "Enola Mudge"))
        people.append(Person(name: "Eryn Mill"))
        people.append(Person(name: "Faith Mincey"))
        people.append(Person(name: "Hiedi Hodgin"))
        people.append(Person(name: "Dave Lakes"))
        people.append(Person(name: "Maisie Rockhold"))
        people.append(Person(name: "Jayme Treaster"))
        people.append(Person(name: "Mika Mortimore"))
        people.append(Person(name: "Juliet Gossard"))
        people.append(Person(name: "Nicholle Almada"))
        people.append(Person(name: "Yulanda Granger"))
        people.append(Person(name: "Tomoko Mcloud"))
        people.append(Person(name: "Ouida Biggs"))
        people.append(Person(name: "Arlean Schaar"))
        people.append(Person(name: "Anglea Wagers"))
        people.append(Person(name: "Elsy Dobbin"))
        people.append(Person(name: "Shauna Borquez"))
        people.append(Person(name: "Cris Winzer"))
        people.append(Person(name: "Camille Andrus"))
        people.append(Person(name: "Ardella Mandelbaum"))
        people.append(Person(name: "Pearlene Lastinger"))
        people.append(Person(name: "Chauncey Sterns"))
        people.append(Person(name: "India Beltz"))
    }
//    
//    func peopleGroupedByLetters() -> [Character: [Person]]{
//        var ret: [Character: [Person]] = [:]
//        for person in people {
//            var letter = Array(person.name)[0]
//            if ret[letter] != nil {
//                ret[letter].append(person)
//            } else {
//                ret[letter] = [person]
//            }
//        }
//        return ret
//    }
    
//    func sortedPeople -> [Person]{
//        var p = self.people.sort({ $0.name > $1.name})
//        return p
//    }

    
}

//var test = ["a": [1, 2,3, 4]]
//
//var b = test["a"]
//
//test["a"]!.append(6)
//
//dump(test["a"])
//
//test["a"].append("sdfsd")
//


func == (lhs:Piece,rhs:Piece) -> Bool {
    return lhs.val == rhs.val
}

class Piece:Equatable,Printable {
    var val : Int
    var description : String { return String(val) }
    init (_ v:Int) {
        val = v
    }
}

var aaa = [12, 23, 4]
var dddd = aaa.filter({ $0 == 12 })
dddd
aaa

