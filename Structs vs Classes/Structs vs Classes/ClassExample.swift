//
//  ClassExample.swift
//  Structs vs Classes
//
//  Created by Chidinma Umenwofor-Nweze on 2020-04-14.
//  Copyright © 2020 Chidinma Umenwofor-Nweze. All rights reserved.
//

import Foundation

class Superhero {
    
    var name: String
    var universe: String
    
    //needs initializer
    init(name: String, universe: String) {
        self.name = name
        self.universe = universe
    }
}

