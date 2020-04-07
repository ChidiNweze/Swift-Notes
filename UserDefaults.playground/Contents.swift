import UIKit

let defaults = UserDefaults.standard //UserDefaults is a Singleton Object!! Hence it can do all the crazy stuff below with various data types.

//It's wise to use constants or a constants file to keep track of all your defaults keys
let dictionaryKey = "myDictionary"

//You can use defaults to save user preferences. For example, the volume, music preferences in games, or the player's name.
defaults.set(0.24, forKey: "Volume")
let volume = defaults.float(forKey: "Volume")
defaults.set(true, forKey: "MusicOn")
defaults.set("Chidinma", forKey: "PlayerName")

//You can persist the date as well.
defaults.set(Date(), forKey: "AppLastOpenedByUser")
let appLastOpen = defaults.object(forKey: "AppLastOpenedByUser")

//You can use defaults to save collections.
let array = [1, 2, 3]
defaults.set(array, forKey: "myArray")
let myArray = defaults.array(forKey: "myArray") as! [Int] //we can downcast as we know the data type of the array (Int)

let dictionary = ["Name": "Chidi"]
defaults.set(dictionary, forKey: dictionaryKey)
defaults.dictionary(forKey: dictionaryKey)

//Only use User Defaults to persist SMALL bits of data. Things that are only a few KB. User defaults IS NOT a database and shouldn't be used as one.
//Avoid using it to save arrays and dictionaries as this can become very unwieldly.
