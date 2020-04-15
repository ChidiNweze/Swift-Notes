//
//  StructExample.swift
//  Structs vs Classes
//
//  Created by Chidinma Umenwofor-Nweze on 2020-04-14.
//  Copyright © 2020 Chidinma Umenwofor-Nweze. All rights reserved.
//

import Foundation

//structs, classes or enums cannot have the same name in Swift
//Structs cannot inherit
struct Villain {
    
    var name: String
    var universe: String
    
    //structs don't need initializers, it's automatically created for you
    
    mutating func reverseName() {
        //Can't do the following without marking it with the keyword mutating
        self.name = String(self.name.reversed())
    }
}


