//Deep dive #1

//This is a comment
print("Hello \(2+3) World")


//Deep dive #2

var a = 5
var b = 8

print("The value of a is \(a)")
print("The value of b is \(b)")

//Deep dive on functions

func greeting() {
    print("hello")
}

greeting()

func greeting2(whoToGreet: String){
    print("Hello \(whoToGreet)")
}

greeting2(whoToGreet: "Angela")
greeting2(whoToGreet: "Chidi")

func greeting3(name: String) -> Bool {
    if name == "Angela" || name == "Jack Bauer" {
        return true
    } else {
        return false
    }
}

var doorShouldOpen = greeting3(name: "Angela")
print(doorShouldOpen)

//Deep dive on conditional statements

func loveCalculator(){
    let loveScore = Int.random(in: 0...100)
    
    if loveScore > 80 {
        print("You love each other like Kanye loves Kanye")
    } else if loveScore >= 40{
        print("You go together like Coke and Mentos")
    } else {

        print("You'll be forever alone")
    }
}
loveCalculator()

func loveCalculator2(){
    let loveScore = Int.random(in: 0...100)
    
    switch loveScore {
        
    case 81...100:
        print("You love each other like Kanye loves Kanye")
    case 41...80:
        print("You go together like Coke and Mentos")
    default:
        print("You'll be forever alone")
    }
}
loveCalculator2()

//Deep dive on optionals

var player1Username: String? = nil

player1Username = "ChidiWorksHard"

print(player1Username)
print(player1Username!) //unwraps the username


//Deep dive on structures

struct Town {
    let name: String
    var citizens: [String]
    var resources: [String: Int]
    
    init(name: String, citizens: [String], resources: [String: Int]) {
        self.name = name
        self.citizens = citizens
        self.resources = resources
    }
    
    func fortify() {
        print("Defences increased!")
    }
}

var anotherTown = Town(name: "Iqaluit", citizens: ["John Amagoalik"], resources: ["Arctic Char": 1000])
anotherTown.citizens.append("Hunter Tootoo")
print(anotherTown.citizens)

var ghostTown = Town(name: "Apex", citizens: [], resources: ["Tumbleweed": 1])

anotherTown.citizens.append("Susan Aglukark")
ghostTown.fortify()

