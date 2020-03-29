import UIKit

//the data type of 'operation' is a function
//boils down add function into its data types
// e.g. (Int, Int) -> Int
func calculator (n1: Int, n2: Int, operation: (Int, Int) -> Int) -> Int {
    return operation(n1, n2) //a function can return another function
}

func add (no1: Int, no2: Int) -> Int {
    return no1 + no2
}


//example of use
calculator(n1: 2, n2: 3, operation: add)

//instead of creating a multiply function, we pass in a CLOSURE.
calculator(n1: 2, n2: 3, operation: { (no1: Int, no2: Int) -> Int in
    return no1 * no2
})
//Due to type inference, we can delete the 'Int'.
//Also, because it's a calculation, the compiler can infer the return type and infer that we want the calculation return.
calculator(n1: 2, n2: 3, operation: { (no1, no2) in no1 * no2})
//taking it even further, we can use anonymous parameters
let result = calculator(n1: 2, n2: 3, operation: { $0 * $1})
print(result)
//Now taking it to the extreme... If the last parameter is a closure, we can omit the last parameter name.
let result2 = calculator(n1: 2, n2: 3) { $0 * $1}
print(result2)


/*As we can see, it helps keep code short and sweet, but the downside is decreased readability.*/

//Lets see a more practical example of this using a mapping
let array = [6,2,3,9,4,1]
//increases each item in the array by 1.
print(array.map({$0 + 1}))
// map the array to a string
let newArray = array.map{"\($0)"}
print(newArray)
