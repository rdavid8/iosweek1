
import UIKit

//1.Write a function that takes in an array of strings, checks if array contains “Earth”, if not, adds it otherwise returns

var planets = ["Pluto", "Venus", "Kepler", "Other"]
func check(var array: [String]) -> String { // creating func check, with var array specify type string
    var input = ""
    if array.contains("Earth") {
        print("contains Earth")
    } else {
        array.insert("Earth", atIndex: 4)
       input = "Earth added"
    }
    return input
}
check(planets)



//2.Use reduce to create single string from the above array. [“Venus”, “Earth”] would produce “Venus, Earth”

planets.reduce("") { (a, b) -> String in // going through array and reducing to one string
    return "\(a) \(b)"
}
    


//3.Declare and implement a dictionary that can contain as values Strings, Ints, etc
    

//var dictionary: ["Ryan" : 1, "David" : 2, "Scott" : 3]
    var otherDictionary: [String : Int] = [:]
    //var dictionary specify type string and int = empty dictionary. Is this what you're looking for?



//4.Declare a dictionary of string values. Declare a function that takes in a string and searches dictionary for it. Use filter

let greetingDictionary = ["Morning" : "Good Morning", "Afternoon" : "Good Afternoon", "Evening" : "Good Evening"]
let filter = greetingDictionary.filter { (day, greeting) -> Bool in
    return day == "Morning"
    }




//5.Write examples for union, intersect, subtract, exclusive Or set operations


let randomGreeting: Set = ["Hi", "Hola", "Bonjour", "Salut", "Ciao"]
let union = randomGreeting.union(["Hi", "Hola", "Bonjour", "Salut", "Ciao"]) //union
let intersect = randomGreeting.intersect(["Hola", "Salut", "Allo"]) //intersect
let subtract = randomGreeting.subtract(["Salut", "Ciao", "Allo"]) //subtract
let exclusive = randomGreeting.exclusiveOr(["Hi", "Ciao", "Bonjour", "Hiagain"]) //exclusiveOr










