import UIKit

var str = "Hello, playground"


// bilangan prime
var logika = 1
for i in 1...20{
    logika = i + 1
    if logika % logika == 0 && logika % 2 == 1 && logika != 9{
       print(logika)
    }
    
}

//fibonacci

var a = 0
var b = 1
print(a)
print(b)

var c = a+b

print(c)

while (c<=89) {
    a = b
    b = c
    c = a + b
    print(c)
}

func fibonacci(n: Int) -> [Int]{
    assert(n>1)
    var array = [0, 1]
    while array.count < n {
        array.append(array[array.count - 1] + array [array.count - 2])
        //append menambahkan slot pada array
    }
    return array
}
 print (fibonacci(n: 10))


//polindrome
var d = 1
var n = 11
let f = (n+1)/2
var e = n/2



//ganjil genap
var n1 = 1
while n1 <= 50{
    if n1 % 2 == 0 {
        print(n1)
    }else if n1 % 2 == 1 {
        print("$")
    }
    n1 = n1 + 1
}

var flag = true
let number = 7

for i in 2 ... number {
    if number % i == 0 && i < number{
        flag = false
        break
    }
}

if flag == false {
    print("\(number) not prime")
} else {
    print("\(number) is prime")
}
