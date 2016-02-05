//Write a function that takes in a string, checks if it can be converted to a number and if possible, returns a number


func date(date: String) -> Int? { // function take taking type string. return Int optional
    let newDate = Int(date) // Type conversion to a integer
    return newDate
    
}
date("31") //calling needs ot be out of function





//Write a function that takes in a tuple (code, message) and returns a string by using interpolation

func display(code: Int, message: String) -> String {
    let tuple:  String = "Error \(code) \(message)"
    
    return tuple
    
}
let toopull = (404, message: "Request not found")
display(toopull)


//Write a function that take in a string, and returns a message: “String contains n characters”


func containString(message: String) -> String {
    let length = String(message.endIndex)
    let string = "String contains \(length) characters"
    
    return string
}
let stringAgain = "Super duper string"
containString(stringAgain)




//Write a function that takes in a string and reverses it. Use simple for loop


let str = "Ryan, Scott, David, Lopez, Junior"
for name in str.characters {
    

    print("Found character: \(name)")
}
//Couldn't figure out how to reverse......
//for var i = 1; i <= str; i++
//let str = "Ryan, Scott, David, Lopez, Junior"
//i < str.characters.count {
//    startIndex.advanceBy(i)
//    var newString = advanceBy\(newString)

// BONUS - Declare a variable that’s function. Implement function to take in a string (name) and return greeting message


func greeting(data: String) -> String { // What am I missing
    
    let newString = "I'm \(data)"
    let data = "Hello, my name is"
    
    print("I'm \(data).")
    
    return newString
}






