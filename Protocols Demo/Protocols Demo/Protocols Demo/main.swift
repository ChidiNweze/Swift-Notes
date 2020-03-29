//
//  main.swift
//  Protocols Demo
//
//  Created by Chidinma Umenwofor-Nweze on 2020-03-27.
//  Copyright © 2020 Chidinma Umenwofor-Nweze. All rights reserved.
//

//Let's make some protocols to make our job easier
protocol CanFly {
    func fly() //protocol methods don't have methods
}
//creating a default implementation with extensions
extension CanFly {
    func fly() {
        print("The object takes off into the air.")
    }
}

//Review of classes
class Bird {
    
    var isFemale = true
    
    func layEgg() {
        if isFemale {
            print("The bird makes a new bird in a shell.")
        }
    }
}

class Eagle: Bird, CanFly {
    func fly() { //eagle must have this method to conform to protocol
        print("The eagle flaps its wings and lifts off into the sky.")
    }
    
   
    func soar() {
        print("The eagle glides in the air using air currents.")
    }
}

class Penguin: Bird { //pengiun can't fly but can do everything else a bird can do
    func swim() {
        print("The penguin paddles through the water.")
    }
}

struct FlyingMuseum {
    func flyingDemo(flyingObject: CanFly) { //can use protocol as a data type!
        flyingObject.fly()
    }
}


struct Airplane: CanFly { //airplanes can fly but are not birds
    func fly() {
        print("The airplane uses its engine to lift off into the air.")
    }
    
}

let myEagle = Eagle()
let myPenguin = Penguin()
let myPlane = Airplane()
let museum = FlyingMuseum()
museum.flyingDemo(flyingObject: myEagle)
