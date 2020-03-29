import Foundation

//Different types of sequences

let fruits = ["Apple", "Pear", "Orange"]
let fruits2: Set = ["Apple", "Pear", "Orange"] //are not iterated in this particular order
let contacts = ["Adam": 123456789, "James": 987654321, "Amy": 912837365]
let word = "supercalifragilisticexpialidocious"
let halfOpenRange = 1..<5
let closedRange = 1...5

//Different types of for loops

for fruit in fruits {
    print(fruit)
}
//
for fruit in fruits2 {
    print(fruit)
}
//
for person in contacts {
    print(person.key)
    print(person.value)
}
//
for letter in word {
    print(letter)
}
//
for _ in halfOpenRange {
    print("Loop ran")
}
//
for number in closedRange {
    print(number)
}

//Different types of while loops

var now = Date().timeIntervalSince1970
let oneSecondFromNow = now + 1

while now < oneSecondFromNow {
    now = Date().timeIntervalSince1970
    print("waiting....")
}
