import Foundation

//MARK: - Observable Properties
var pizzaInInches: Int = 10 {
    //before the value is changed this block of code will be triggered
    willSet {
    }
    //after the value is changed this block of code will be triggered
    didSet {
        //this is a good application of observed properties
        if pizzaInInches > 18 {
            print("Invalid size specified, pizzaInInches set to the largest size (18 inches)")
            pizzaInInches = 18
        }
    }
}

//Testing out observable properties
pizzaInInches = 33

//MARK: - Computed Properties (Getters and Setters)
var numberOfPeople: Int = 12
let slicesPerPerson: Int = 4

var numberOfSlices: Int {
    get {
        return pizzaInInches - 4 //getter
    }
    set {
        print("Number of slices now has a new value which is \(newValue)") //setter - runs every time a new value is set
    }
}

//can only do this as there is a 'set' block in the declaration of 'numberOfSlices'
//numberOfSlices = 12

//possible application of getter and setter
var numberOfPizza: Int {
    get { //calculate number of pizzas based on how many people you have.
        let numberOfPeopleFedPerPizza = numberOfSlices / slicesPerPerson
        return numberOfPeople / numberOfPeopleFedPerPizza
    }
    set { //calculate the number of people based on how much pizza you have.
        let totalSlices = numberOfSlices * newValue
        numberOfPeople = totalSlices / slicesPerPerson
    }
}

numberOfPizza = 4
print(numberOfPeople)


