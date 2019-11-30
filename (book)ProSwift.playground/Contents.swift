import UIKit

var str = "Hello, playground"


let authentication = (name: "twostrawas", password: "fr0stless", ipAddress: "127.0.0.1" )
print(authentication)

switch authentication {
case ("bilbo", "bagg1n5", _):
    print("Hello, bilbo baggins")
    
case ("twostrawas", "fr0stless", _):
        print("Hello, Paul Hudson")
    
default:
    print("who are you?")
}

let nama = ("paul", "Hudson")

func fizzbuzz(number: Int) -> String {
    switch (number % 3 == 0, number % 5 == 0) {
        
    case (true, false):
        return "fizz"
        
    case (true, true):
        return "fizzBuzz"
        
    case (false, false):
        return String(number)
    
    case (false, true):
        return "Buzz"
    }
}
print(fizzbuzz(number: 10))



let twostrawas = (name: "twostrawas", password: "fr0stless")
let bilbo = (name: "bilbo", password: "bagg1n5")
let taylor = (name: "taylor", password: "fr0stless")

let users = [twostrawas, bilbo, taylor]

for user in users{
    print(user.password)
}

for case ("twostrawas", "fr0stless") in users{
    print("Welcome twostrawas has the password fr0stless")
}
for case (let name, let password) in users{
    print("Welcome \(name) has the password \(password)")
    
}


// .none dan .some

//cara 1
let name : String? = "Dodit"
let password : String? = nil// (/nil)

switch (name, password) {
case let (.some(name), .some(password)):
    print("hello \(name)")
    
case let(.some(name), .none):
    print("please enter the password !")
    
default:
    print("who are you")
}

//cara 2
var matchedName = name
var matchedPassword : String? = password


switch (name, password) {
case let (.some(matchedName), .some(matchedPassword)):
    print("HELLO \(name)")
    
case let (.some(matchedName), .none):
    print("Enter your passaword")
    
default:
    print("who are you?")
}


//cara 3
switch (name, password) {
case let (name?, password?):
    print("hello \(name)")
    
case let (name?, nil):
        print("please enter a password!")
    
default:
    print("who are you?")
}
