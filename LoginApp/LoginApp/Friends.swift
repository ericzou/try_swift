//
//  People.swift
//  LoginApp
//
//  Created by Eric Zou on 8/9/14.
//  Copyright (c) 2014 Eric Zou. All rights reserved.
//

import Foundation

class Friends {
    var people: [Person]
    var selectedPeople: [Person] = []
    
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
    
    func peopleGroupedByLetters() -> [String: [Person]]{
        var ret: [String: [Person]] = [:]
        var people = self.sortedPeople()
        for person in people {
            var letter = String(Array(person.name)[0])
            var group: [Person]! = ret[letter]
            if group != nil {
                group.append(person)
                ret[letter] = group
            } else {
                ret[letter] = [person]
            }
        }
        return ret
    }
    
    func sortedPeople() -> [Person] {
        return self.people.sorted({ $0.name < $1.name})
    }
    
    func sortedKeys() -> [String] {
        return sorted(self.peopleGroupedByLetters().keys) { $0 < $1 }
    }
    
}

