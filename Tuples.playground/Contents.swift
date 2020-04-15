import Foundation

//Tuples can be used to quickly relate pieces of data (usually a small quantity though)

//not preferred way of creating a tuple
let tuple1 = ("Chidi", 19)
print(tuple1.0)

//better way of creating tuples
let tuple2 = (name: "Nmesoma", age: 21)
print(tuple2.name)

//Another way...
let tuple3: (name: String, age: Int)
tuple3.name = "Nkiruka"
tuple3.age = 48
