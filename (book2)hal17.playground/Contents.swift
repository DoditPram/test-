import UIKit

import Foundation
let data : [Any?] = ["bill", nil, 69, "Ted"]
print(data)
//cara 1 mengambil data menggunakan yang tersimpan dalam optional di array
for case let .some(datum) in data{
    print(datum)
}

//cara 2 untuk mengambil data dalam array menggunakan datum
for case let datum? in data{
    print(datum)
}


//matching range /switch/ if else/
//penggunaan switch
let age = 90

switch age {
case 0..<18:
    print("you have energy and time, but not the money")

case 0..<70:
    print("you have energy and money, but not the time")

default:
    print("you have money and time, but not the energy")
    
}


//penggunaan if else
var umur = 0
if (1...18).contains(umur){
    print("you have energy and time, but not the money")
}else if  (19...60).contains(umur){
    print("you have energy and money, but not the time")
}else if umur == 0{
    print("the baby need nutrition")
}
else{
    print("you have money and time, but not the energy")
}

//combine matches tuples
var user = (name :"Muhamad Dodit", password : "doditGan01", ip: Double(), age2 : 25)



switch user {
case let (name, _,_,0...18):
     print("\(name) have energy and time, but not the money")

case let (name, _,_,0...60):
    print("\(name) have energy and money, but not the time")

case let (name, _,_,_):
    print("\(name) have money and time, but not the energy")

}


//enum

enum weatherType {
    case cloudy(celcius: Double)
    case sunny
    case windy
    case any
}

let today = weatherType.cloudy( celcius: 1530/100)

switch today {
case .cloudy(let celcius) where celcius <= 1:
    print("today its cloudy \(celcius)% celcius")
case .cloudy(let celcius) where celcius <= 10 :
    print("this is UK ")
case .cloudy(let celcius) where (10...100).contains(celcius):
    print("its a bit cloudy, with \(celcius)")
case .sunny:
    print("today it's sunny so hot babe")
case .windy:
    print("you must availble the umberela")
default:
    print("its hall")
}



// main object

let view : AnyObject = UIButton()


switch view {
case is UIButton:
    print("Found a buttom")

case is UILabel:
    print("Found a Label")

case is UISwitch:
    print("Found a Switch")

case is UIView:
    print("Found a View")
default:
    print("Found something else")
}

for label in view.subviews where label is UILabel{
    print("found a label with frame \(label.frame)")
}

for case let label as UILabel in view.subviews{
    print("found a label with text \(label.text)")
}


let numbers = [3, 5, 2, 1, 4]

for number in numbers where number % 2 == 1 {
    print(number)
}

//hasSufflix (akhir) dan hasPreflix (awalan)
let celebrities = ["michael jekson", "taylor swift", "adele adkins"]
for name in celebrities where !name.hasSuffix("swift"){
    print(name)
}

let celebrities2 : [String?] = ["michel jackson", nil, "adele adkins", "michel jordan"]

for name in celebrities2 where name != "michel jackson" {
    print(name)
}

for case let name? in celebrities2{
    print(name)
}
