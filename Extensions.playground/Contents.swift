import UIKit

//EXAMPLE 1: making round to function for doubles.
extension Double {
    
    mutating func round(to places: Int) -> Double {
        let precision = pow(10, Double(places))
        var n = self
        n = n * precision
        n.round()
        n = n / precision
        return n
    }
}

var myDouble = 3.14159

let myRoundedDouble = String(format: "%.1f", myDouble)
print(myRoundedDouble)

//The below code doesn't work without the extension.
myDouble.round(to: 3)


//EXAMPLE 2: making circular buttons
let button = UIButton(frame: CGRect(x: 0, y: 0, width: 50, height: 50))
button.backgroundColor = .red
//making a circular button


extension UIButton {
    func makeCircular() {
        self.clipsToBounds = true
        self.layer.cornerRadius = self.frame.size.width / 2
    }
}

button.makeCircular()

//Example 3: Extending Protocols. Go to protocols notes as they were added there.
