import UIKit

struct MyStructure {
    let instanceProperty = "ABC"
    static let typeProperty = "123"
    
    func instanceMethod() {
        
    }
    
    static func typeMethod() {
        
    }
}

let myStructure = MyStructure()
print(myStructure.instanceProperty)
myStructure.instanceMethod()

//on the other hand, to use "typeProperty" you don't need to create a new instance of MyStructure.

print(MyStructure.typeProperty)
MyStructure.typeMethod()
