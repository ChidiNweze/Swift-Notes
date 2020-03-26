//
//  Enemy.swift
//  ClassesDemo
//
//  Created by Chidinma Umenwofor-Nweze on 2020-03-25.
//  Copyright © 2020 Chidinma Umenwofor-Nweze. All rights reserved.
//

class Enemy {
    //attributes
    var health: Int
    var attackStrength: Int
    
    //classes do not have built-in initializers
    init(health: Int, attackStrength: Int) {
        self.health = health
        self.attackStrength = attackStrength
    }
    
    //methods
    func takeDamage(amount: Int) {
        health = health - amount
    }
    
    func move() {
        print("Walk forwards.")
    }
    
    func attack() {
        print("Land a hit, does \(attackStrength) damage.")
    }
}
