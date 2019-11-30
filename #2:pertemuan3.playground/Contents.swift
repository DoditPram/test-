import UIKit

var str = "Hello, playground"

//closures
//() -- > Parameter
//{} --> yang dikerjakan
//--> return value


//Function
//cara kita memberikan action kepada komputer
 
func empyFunction(){
    //cara menggunakan func
}
empyFunction()

let input: String = ""
func greeting (input: String) -> String {
    return"greetings, " + input + "!"
}
print(greeting(input: "Andika"))


func goodbye(input : String) -> String{
    return "goodbye, " + input + "!"
}
print(goodbye(input: "Dodit"))



//1. function without parameters "()"
func sayaGreeting() -> String{
    return "Hello coding"
}
print(sayaGreeting())


//2. function multiple parameter
func greet1ng(input: String, alreadyGreet: Bool) -> String{
if alreadyGreet{
    return goodbye(input: input)
}else{
    return greeting(input: input)
    }
}
print(greet1ng(input: "Andika", alreadyGreet: true))


//3. func multiple return value

func minMax(array: [Int]) -> (min: Int, max: Int){
    var currMin = array[0]
    var currMax = array[0]
    
    for value in array[1..<array.count]{
        if value < currMin {
            currMin = value
        }else if value > currMax {
            currMax = value
        }
    }
    return (currMax, currMin)
}
let himpunanA = minMax(array: [2, 5, 10, 199, 201])
print("nilai maximal is \(himpunanA.max) dan nilai minimal \(himpunanA.min)")

//4. func without return value

func great(input : String) {
    print("Helo \(input)")
}
great(input: "Andika")









//tugas
var P = 10
var L = 30
var T = 9

func segitiga(input : String) -> String{
    return "panjang x lebar x tinggi, rumus segitiga!"
    }
func persegi(input: String) -> String{
    return "panjang x lebar rumus persegi !"
}
print(segitiga(input: input))



//2 enum digabungkan kepada 1 structure

enum Rank : Int {
    
    case ace = 1
    case two, three, four, five, six, seven, eight, nine, ten
    case jack, queen, king
    
    func simpleDescription() ->String{
        switch self {
        case .ace:
            return "ace"
        case .king:
            return "jack"
        case .queen:
            return "queen"
        case .jack:
            return "jack"
            
        default :
            return String(self.rawValue)
        }
    }
    
}
let ace = Rank.ace
let aceRaw = ace.rawValue

print(ace)
print(aceRaw)


enum Suit {
    case spedes, hearts, diamonds, clubs
    
    func simpleDescription() -> String{
        switch self {
        case .spedes:
            return "Spedes"
        case .hearts :
            return "Hearts"
        case .diamonds :
            return "Diamond"
        case .clubs :
            return "Clubs"
    
        }
    }
}
struct Card {
    var rank : Rank
    var suit : Suit
    func simpleDescription() -> String{
        return " the \(rank.simpleDescription()) of \(suit.simpleDescription())"
    }
}

let aceOfHearts = Card.init(rank: .ace, suit: .hearts)
let threeOfHearts = Card.init(rank: .three, suit: .diamonds)

let AOHdesc = threeOfHearts.simpleDescription()

print(threeOfHearts)
print(AOHdesc)

//protocol isi methode, properties dan func
//class, struct, enum

protocol exampleProtocol{
    var simpleDesc: String {get}
    mutating func adjust()
}
//penggunaan class
class simpleClass: exampleProtocol{
    var simpleDesc: String = "Very Simple class"
    var anothrerProperty : Int = 69100
    
    func adjust() {
        simpleDesc += "now 100% adjusted"
    }
}

var a = simpleClass()
a.adjust()
let aDesc = a.simpleDesc
print(a.simpleDesc)

//penggunaan Structure
struct SimpleStructure: exampleProtocol{
    var simpleDesc: String = "Very simple structure"
    mutating func adjust() {
        simpleDesc += "(adjusted)"
    }
}
var b = SimpleStructure()
b.adjust()
let bDesc = b.simpleDesc


//extention

extension Int{
    var kelipatan2 : Int{return self * 2}
    var kelipatan3 : Int{return self * 3}
}
var hasilKelipatan = 82.kelipatan2
print(hasilKelipatan)

extension Double{
    var KM : Double {return self * 1000.0}
    
    var M : Double {return self}
    
    var CM : Double {return MM / 100.0}
    
    var MM : Double {return self * 1000.0}
    
}

var marathon = 24.5.M
var estafet = 5.0.KM
print(marathon)
print(estafet)

//error handling

enum printerError : Error{
    case outOfpepper
    case noTuner
    case onFire
}
//cara1
func send(job : Int, toPrinter PrinterName: String) throws -> String{
if PrinterName == "Never has toner"{
    throw printerError.noTuner
    }
    return "job Sent"
}

//model catch 2.1
do{
    let printerResponse = try send(job: 1010, toPrinter: "cannon")
    print(printerResponse)
}catch{
    print(error)
}


//2.2
do{
    let printerResponse = try send(job: 1400, toPrinter: "fuji")
    print(printerResponse)
}catch printerError.onFire{
    print("kebakar")
}catch let printerError as printerError{
    print("Print error : \(printerError)")
}catch{
    print("Error")
}

//3
let printerSuccess = try? send(job: 2000, toPrinter: "boss")
let printerFailure = try? send(job: 2000, toPrinter: "never has toner")
print(printerFailure)

