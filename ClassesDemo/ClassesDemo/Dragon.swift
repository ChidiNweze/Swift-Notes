//
//  Dragon.swift
//  ClassesDemo
//
//  Created by Chidinma Umenwofor-Nweze on 2020-03-25.
//  Copyright © 2020 Chidinma Umenwofor-Nweze. All rights reserved.
//

class Dragon: Enemy {
    var wingSpan = 2
    
    func talk(speech: String) {
        print("Says: \(speech)")
    }
    
    //You can override the methods of the SuperClass. For example, the move() method.
    override func move() {
        print("Fly forwards.")
    }
    //"super.attack()" represents the method from the SuperClass. Allows for additional functionality.
    override func attack() {
        super.attack()
        print("Spits fire, does 10 damage.")
    }
}
