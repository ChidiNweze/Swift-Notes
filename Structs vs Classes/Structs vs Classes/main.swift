//
//  main.swift
//  Structs vs Classes
//
//  Created by Chidinma Umenwofor-Nweze on 2020-04-14.
//  Copyright © 2020 Chidinma Umenwofor-Nweze. All rights reserved.
//

import Foundation

//MARK: - Class Example
var hero = Superhero(name: "Iron Man", universe: "Marvel")

//Remember! Classes are passed by reference
var anotherMarvelHero = hero
anotherMarvelHero.name = "The Hulk"
print("Hero name = \(hero.name)")
print("anotherMarvelHero name = \(anotherMarvelHero.name)")

//Remember! Properties of classes can be nutable even if the instance of the class is immutable
let hero2 = Superhero(name: "Thor", universe: "Marvel")
hero2.name = "Spiderman"

//MARK: - Struct Example
var villain = Villain(name: "Loki", universe: "Marvel")
print(villain.reverseName())

//Remember! Structs are passed by value
var anotherMarvelVillain = villain
anotherMarvelVillain.name = "Thanos"
print("Hero name = \(villain.name)")
print("anotherMarvelHero name = \(anotherMarvelVillain.name)")

var villain2 = Villain(name: "Alexander Pierce", universe: "Marvel")
print(villain2.reverseName())
