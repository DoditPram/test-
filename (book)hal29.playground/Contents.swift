import UIKit

var str = "Hello, playground"

let name : String? = "Taylor"
print(name ?? "Anonymous")



func returnOfOptionalName () -> String? {
    return nil
}
let returnedName = returnOfOptionalName() ?? "Anonymous"
print(returnedName)



//mengambile content of text
var savedText: String
do {
    let sevedText = try String (contentsOfFile: ".txt")
    print(sevedText)
}catch{
    
    savedText = "hello world"
    
    if savedText == nil{
        print("failed to load saved text")
    }else{
     print("hello wolrd")
    }
}
