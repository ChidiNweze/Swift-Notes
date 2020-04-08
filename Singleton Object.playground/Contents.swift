import UIKit

//Examples of singletons
let defaults = UserDefaults.standard
let sharedURLSession = URLSession.shared

//The special thing about singletons is that there is only one copy that can be shared across all the classes and objects.

//MARK: - How a regular object works

class Car {
    var colour = "Red"
}

let myCar = Car()
myCar.colour = "Blue"
let yourCar = Car()
print(yourCar.colour)
//As we can see here, for a regular class, the new object "yourCar" has nothing to do with "myCar" even though they are of the same class.

//MARK: - How a singleton works

//This time, by using "static let" we can initialize a singleton.
class Bike {
    var colour = "Red"
    
    static let singletonBike = Bike()
}

let myBike = Bike.singletonBike
myBike.colour = "Blue"

let yourBike = Bike.singletonBike
print(yourBike.colour)
//As we can see here, the different bikes are essentially getting their colour value from the same source.
//The singleton is basically the same object that never changes.
