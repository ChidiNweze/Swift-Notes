//
//  main.swift
//  ClassesDemo
//
//  Created by Chidinma Umenwofor-Nweze on 2020-03-25.
//  Copyright © 2020 Chidinma Umenwofor-Nweze. All rights reserved.
//

let skeleton1 = Enemy(health: 100, attackStrength: 10)
skeleton1.move()
skeleton1.attack()

//classes are passed by reference, so whatever happens to skeleton1 also happens to skeleton2 (same skeleton)
//Remember Structs are immutable. This won't happen.
//In Structs, method is labelled as "mutating", and old instance of Struct is deleted and a new one is created.
//Structs are passed by value.
let skeleton2 = skeleton1
skeleton1.takeDamage(amount: 10)
print(skeleton2.health)

//SuperClass is the same thing as a parent class.
//SubClass is the same thing as a child class.

//Dragon is a SubClass of the Enemy class
let dragon = Dragon(health: 100, attackStrength: 10)
//has extra attribute called wingSpan
dragon.wingSpan = 5
dragon.attackStrength = 15
dragon.move()
dragon.attack()
dragon.talk(speech: "My teeth are swords! My claws are spears! My wings are a hurricane!")

