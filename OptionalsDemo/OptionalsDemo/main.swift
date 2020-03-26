//
//  main.swift
//  OptionalsDemo
//
//  Created by Chidinma Umenwofor-Nweze on 2020-03-25.
//  Copyright © 2020 Chidinma Umenwofor-Nweze. All rights reserved.
//

let myOptional: String?

myOptional = nil
//Dilemma (commented out)
//let text: String = myOptional


//Option 1: Force unwrapping
let text1: String = myOptional!
/*You know what Xcode? I know better than you! - but not really.
 If myOptional is nil I'm screwed. This is the least safe way to work with optionals*/


//Option2: Check for nil value
if myOptional != nil {
    let text2: String = myOptional!
} else {
    print("Optional was found to be nil.")
}
/*This is hella wordy though!*/


//Option3: Optional Binding
if let safeOptional = myOptional {
    let text3: String = safeOptional
} else {
    print("Optional was found to be nil.")
}
/*Replicates same behaviour as Option2 with less wordiness*/


//Option4: Nil Coalescing Operator
let text4: String = myOptional ?? "I am the Default Value, hear me roar!"
/*Allows to replace value with default if nil is encountered. WOAH!*/

/******************************************************************/

//What about optional Structs and Classes???????

struct MyOptional {
    var property = 123
    func method() {
        print("I am the struct's method, hear me roar!")
    }
}


let myOptionalStruct: MyOptional?
myOptionalStruct = nil
//Dilemma (commented out)
//print(myOptionalStruct.property)


//Option1: say fuck it, and unwrap it
print(myOptionalStruct!.property)
/*Dangerous if struct is nil! Even though the property isn't, it's overall struct is,
 which takes precedence*/


//Option2: Optional Chaining
print(myOptionalStruct?.property)
/*This means; If this optional is not nil, then continue along this chain and
 try to access the property or method.*/


