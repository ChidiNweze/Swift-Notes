import UIKit

class Animal {
    var name: String
    
    init(n: String) {
        name = n
    }
}

class Human: Animal {
    func code() {
        print("Typing away...")
    }
}

class Fish: Animal {
    func breatheUnderWater() {
        print("Breathing under water")
    }
}

let chidi = Human(n: "Chidi Nweze")
let nmesoma = Human(n: "Nmesoma Nweze")
let nemo = Fish(n: "Nemo")

//we are allowed in the same array as we have a common super class: Animal
let neighbours = [chidi, nmesoma, nemo]

//TYPE CHECKING:
//\I can revert back to the human class!
if neighbours[0] is Human {
    print("First neighbour is a Human")
}
//The "is" keyword allows us to check if an object is of a specific data type.

//FORCED DOWNCASTING:
func findNemo(from animals: [Animal]) {
    for animal in animals {
        if animal is Fish {
            print(animal.name)
            //now we have to use forced (!) downcasting to call fish methods
            let fish = animal as! Fish
            fish.breatheUnderWater()
            //we can even upcast
            let animalFish = fish as Animal
        }
    }
}

findNemo(from: neighbours)

//But be careful with forced downcasting! Uncomment the following line to watch it crash
//let fish = neighbours[1] as! Fish

//It's better to make it become an optional (?)
if let fish = neighbours[1] as? Fish {
    fish.breatheUnderWater()
} else {
    print("Casting has failed")
}

//MARK: - Notes on Any, AnyObject, NSObject

/*
 "Any" refers to literally any object. Within the "Any" set, there is a subset of "AnyObject" data types. "AnyObject" MUST be derived from classes.
 Even more specialized IS the "NSObject". These are objects from the Foundation classes.
 */

//Check it out:

let anyArray: [Any] = [chidi, nmesoma, nemo, 12]

let num: NSNumber = 12
let anyObjectArray: [AnyObject] = [chidi, nmesoma, nemo, num]

let word: NSString = "a-b-c"
let nsObjectArray: [NSObject] = [num, word]
