import UIKit

var cob :Int = 0
cob = 10 % 2
print( cob)
// 1. Fibbonacci

// 0 1 1 2 3 5 8 13...
// a b
//     c = 0 + 1
//   a b
//       c = 1 + 1

var a:Int = 0, b:Int = 1, c:Int = 0;


while(c<=89){
    a=b
    b=c
    c=a+b
    print(c)
}

// 2. Palindrome
var reversen = 0
var rem = 0
var n = 39543211234593
var no = n

while n != 0 {
    rem = n%10
    reversen = reversen * 10 + rem
    n/=10
    if no == reversen {
        print("\(no)"+" is Palindrome")
    }
    else if no != reversen {
        print("\(no)" + "is no Palindrome")
    }
    
}

// 3. Print Square

var N = 3
var M = 3

// Nested Loop
for i in 1...10 {
    for j in 1...10 {
        print("* ", terminator : "")//pembatas ke bawah
    }
   print()//pembatas -> kebawah
}



// 4. Pyramid Triangle

var j: Int = 0
var pattern = String()
for i in 1...5 {
    for _ in 1...6 - i {
        pattern += " "
    }
    for j in 1...i {
        pattern += "\(j)"
    }
    j = i - 1
    while j >= 1 {
        pattern += "\(j)"
        j -= 1
    }
    pattern += "\n"
}
print(pattern)


// 5. print 2D array
// long version
// 0 1 2 3
let arrayEW = ["W", "X", "Y", "Z"]
print(arrayEW[4-1])

let array = [["W", "X", "Y", "Z"], ["A", "B", "C", "D"]]

let firstArray = array[0]  // ["W", "X", "Y", "Z"]
let X = firstArray[1]  // "X"

let secondArray = array[1]  // ["A", "B", "C", "D"]
let D = secondArray[3]  // "D"

// Short version

print(array[0][1], array[1][3])  // "X D"


// 6. print Triangle
var W = 3

for i in 1...W {
    for j in 1...i {
        print("*", terminator: "")
    }
    print("")
}


// 7. Print Diamond

let L = 4

for i in 1...L {
    for j in 0..<(L-i) {
        print(" ", terminator: "")
    }
    
    for j in 1...2*i-1 {
        print("*", terminator: "")
    }
    print("")
}

if (N > 1) {
    for j in 2...N {
        var i = N - j + 1
        for k in 0..<(N-i) {
            print(" ", terminator: "")
        }
        
        for k in 1...2*i-1 {
            print("*", terminator: "")
        }
        print("")
    }
}

// 8. Print Chess Board

let O = 8

// prints the top border
print("+", terminator: "")
for _ in 1...O {
    print("-", terminator: "")
}
print("+")

for i in 1...O {
    // prints the left border
    print("|", terminator: "")
    for j in 1...O {
        if i % 2 == j % 2 {
            print("#", terminator: "")
        } else {
            print(" ", terminator: "")
        }
    }
    // prints the right border a a new line
    print("|")
}

// prints the bottom border
print("+", terminator: "")
for _ in 1...O {
    print("-", terminator: "")
}
print("+")


// 9. Reverse

var number = 1234

while number > 0 {
    print(number % 10, terminator: " ")
    number /= 10
}

// 10. Prime Number
var numberW = 4

var numberOfDivisors = 0

for i in 1...numberW {
    if numberW % i == 0 {
        numberOfDivisors += 1
    }
}

if numberOfDivisors == 2 {
    print("\nprime")
} else   {
    print("\nnot prime")
}

// 11. Factorial
var numberr = 5
print("\(numberr) = ", terminator: "")

var isFirst = true

for i in 2...numberr {
    if numberr % i == 0 {
        while (numberr % i == 0) {
            numberr /= i
            
            if isFirst {
                isFirst = false
            } else {
                print(" * ", terminator: "")
            }
            
            print(i, terminator: "")
        }
    }
}

