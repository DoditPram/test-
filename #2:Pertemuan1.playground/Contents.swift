import UIKit

var str = "Hello, playground"
var a = 10
var nama = "Joni"




//commend+/(commend lebih dari satu baris)
//sadasdasdasda
//asdasdasd
//adsdas


//type Data
//1. Int
//2. Floating(32bit)
//3. Double(64bit)
//4. boolean(True/false)
//5. String

var greeting:String = "Hello world"
var angka:Int = 10
var pi : Float = 3.14
var piExtension : Double = 3.14151379

print(greeting)

var jikaBenar : Bool = true

//constanta

let gravitasi = 9.8

//latihan
var namaPengguna : String = "Muhamad Dodit"
var umur : Int = 24
let tanggalLahir : Int = 16
let bulanLahir : String = "Oktober"
var hobby:String = "Lari"
var pekerjaan = "pelajar"

var panjang = 10
var lebar = 3
var tinggi = 5
var alas = 7
var radius = 8.0

let segi3 = (tinggi*alas)/2
let persegi = panjang * lebar
let lingkaran = 3.14 * pow(radius,2)

// pow = radius^^^2

print(segi3)
print(persegi)
print(lingkaran)

var lari = 3000.0
var goal = 15000.0
var presentase = (lari/goal)*100

print(presentase, "% total ")

//conditional opration

//">" = lebih dari
//"<" = kurang dari
//"==" = sama dengan
//"!=" = tidak sama
//">=" = lebih kecil sama dengan
//"<=" = lebih besar sama dengan


//conditional statment
// if = jika
// if else = jika kondisi dan kebalikannya
// if else if = jika kondisi, jika kondisi, jika kondisi dan kebalikannya

// "&&" ke2 kondisi harus benar
// "||" salah satu harus memenuhi

var pilihanUser = 2 //pilihan user
if pilihanUser == 1{
    print(segi3)
    
}else if (pilihanUser == 2){
    print(persegi)
    
}else if (pilihanUser == 3){
    print(lingkaran)
}
var nilaiKKM = 90
if nilaiKKM >= 60 || nilaiKKM <= 79 {
    print("Selamat Mendapat haidah")
}else{
    print("Mendapat Hukuman")
}

//looping

//for

for index in 1...5{
    for index2 in 1...5{
        print("#")
    }
}

var i = 1
var j = 1
var rows = 5

//while loop

while i <= rows {
    while j <= rows {
        print("@")
       i+=1
    }
    print("!")
    j += 1
}

var belajar : Bool = true
while belajar == true {
    print("Asyik")
    belajar = false
}

//type data "Optional"
var nama2: String? = "Andika"
print(nama2!)

var phoneNumber:String? = "081316211436"
phoneNumber = nil

if let phone = phoneNumber{
    print(phone)
} else {
    print("NO NULL")
}

