import UIKit

var str = "Hello, playground"

struct student{ // struct adalah tipe data dengan public
    //define the properties
    var studentID : String
    var name: String
    var classOf: String
    //Methode
    func study(course : String){
        print("\(name) is Studying \(course)")
    }
}

var firstStudent: student = student(studentID: "123123123", name: "Dodit", classOf: "2013")
print("Nama Saya \(firstStudent.name), class of \(firstStudent.classOf)\(firstStudent.study(course: "ios development"))")


class Lecturer{
    // define the properties
    var lectureID: String = ""
    var specialization: String = ""
    var  name : String
    var student: [student] = []
    //// initialazer declaration
    init(id: String, special: String, name: String) {
        self.lectureID = id
        self.specialization = special
        self.name = name
        
    }
    func showAllStudent()  {//looping cara memanggil data yang ada di class
        for studentTo in student{
            print("mr\(name) student is \(studentTo.name) class \(studentTo.classOf)")
            
        }
    }
}
//methode
//cara manggil class di  tambahkan dahulu inputannya
var firstLec: Lecturer = Lecturer(id: "123", special: "AI", name: "Azmi")
firstLec.student.append(firstStudent)//untuk menambahkan
firstLec.student.append(student(studentID: "3211321", name: "Anwar", classOf: "2014"))//menambah student baru
firstLec.showAllStudent()// untuk menampilkan

//superclass
class MediaItem{
    var naem : String
    init(name1: String) {
        self.naem = name1
    }
}

//subclass
class Movie: MediaItem{
    var director: String
    init(name2: String, director: String) { //upcasting
        self.director = director
        super.init(name1: name2)//upcasting
    }
}


class Song : MediaItem{
    var artis: String
    init(name2: String, artis:String) {
        self.artis = artis
        super.init(name1: name2)//upcasting
    }
}

let library = [
    Movie(name2: "frozen ", director: "bapaku"),
    Movie(name2: "PTJ", director: "joko"),
    Movie(name2: "Gundala", director: "joko"),
    Song(name2: "Hotel California", artis: "Budi Setiawan"),
    Song(name2: "Mr. Simple", artis: "SUJU")
]

var movieCount = 0
var songCount = 0

for lib in library{
    if lib is Movie{
        movieCount += 1
    }else if lib is Song{
        songCount += 1
    }
}

print("Media library berisikan \(movieCount) filem dan \(songCount) musik")


//downcastimg

for item in library{ //cara memanggil item dalam library
    if let movie = item as? Movie{
        print("Movie:  \(movie.naem) dir :  \(movie.director)")
    }else if let song = item as? Song{
        print("Movie:  \(song.naem) dir :  \(song.artis)")
    }
}


class Kendaran{
    var kendaran : String
    init(kendaraan : String) {
        self.kendaran = kendaraan
    }
}

class Motor: Kendaran{
    var sportMoto: String
    
    init(kendaraan: String, sportMoto: String) { //upcasting
        self.sportMoto = kendaraan
        super.init(kendaraan: sportMoto)
    }
}

class Mobil: Kendaran{
    var sportMobil: String
    
    init(kendaraan: String, sportMobil: String) { //upcasting
        self.sportMobil = kendaraan
        super.init(kendaraan: sportMobil)
    }
}
let libraryKendaraan = [
    Motor(kendaraan: "motor", sportMoto: "Ducati"),
    Motor(kendaraan: "motor", sportMoto: "Kawasaki"),
    Motor(kendaraan: "motor", sportMoto: "Yamaha"),
    Mobil(kendaraan: "Mobil", sportMobil: "ferrari"),
    Mobil(kendaraan: "Mobil", sportMobil: "bugati"),
    Mobil(kendaraan: "Mobil", sportMobil: "lamborgini")
    
]

var motoCount = 0
var mobilCount = 0

for lib in libraryKendaraan{
    if lib is Motor{
        motoCount += 1
    }else if lib is Mobil{
        mobilCount += 1
    }
}

print("Kendaraan library berisikan \(mobilCount) filem dan \(motoCount)")


class Vehicle{
    var currentSpeed = 0.0
    var desc : String {
        return "treveling at \(currentSpeed), km per hour"
    }
    func makeNoice(){
        
    }
}
//polimorphisem tidak merubah induknya
let someVehicle = Vehicle()
print("vehile: \(someVehicle.desc)")

class Train : Vehicle{
    override func makeNoice() {//menambahkan func
        print("tututututut")
    }
}
let train = Train()
train.makeNoice()


//mengambil vehicle dimasukan mobil dan membuat desc yang isinya gear
class Car: Vehicle{
    var gear = 1
    override var desc: String {
        return super.desc + "in gear \(gear)"
    }
}

let car = Car()
car.currentSpeed = 25.0
car.gear = 3

print("car : \(car.desc)")


class autometicCar: Car{
    override var currentSpeed: Double{
        didSet{
            gear = Int(currentSpeed / 10.0) + 10
        }
    }
}
let auto = autometicCar()
auto.currentSpeed = 35.0

print("automatic Car: \(auto.desc)")

print(autometicCar.init())

//note
// ovverride = merubah induknya
// enum itu berisikan type
// struct itu berisikan value


//animal kingdom pr

//property observer
//willset = dipanggil sebelum value disimpan
//didset = dipanggil setelah value disimpan

struct KingdomZoo {
    var idHewan: String = ""
    var tipeHewan : String = ""
    var tinggal: String = ""
    
    func hewan(namaHewan: String){
        
    }
}
var firstHewan : KingdomZoo = KingdomZoo(idHewan: "01", tipeHewan: "mamalia", tinggal: "darat")
print("model hewan \(firstHewan.self)")

class Hewan{
    var jenisHewan :String
    
    init(namaHewan : String, kelamin: String) {
        self.jenisHewan = namaHewan
    }
}

class HewanDarat : Hewan{
    var mamalia : String = ""
    var kelamin : String = ""
    
    override init(namaHewan: String, kelamin: String) {
        self.mamalia = namaHewan
        self.kelamin = kelamin
        super.init(namaHewan: mamalia, kelamin: kelamin)
    }
}

class HewanLaut : Hewan{
    var ikan : String = ""
    var kelamin : String = ""
    
    override init(namaHewan: String, kelamin: String) {
        self.ikan = namaHewan
        self.kelamin = kelamin
        super.init(namaHewan: ikan, kelamin: kelamin)
    }
}

let libraryAnimal = [
    HewanLaut(namaHewan: "paus", kelamin: "L"),
    HewanLaut(namaHewan: "Lumba2", kelamin: "w"),
    HewanDarat(namaHewan: "harimau", kelamin: "L"),
    HewanDarat(namaHewan: "macan", kelamin: "w"),
    HewanLaut(namaHewan: "cupang", kelamin: "w"),
    HewanLaut(namaHewan: "gapi", kelamin: "w")
]

for item in libraryAnimal{
    if let hewanDarat = item as? HewanDarat{
        print("nama hewan: \(hewanDarat.mamalia) jenis kelamin: \(hewanDarat.kelamin)")
    }else if let hewanLaut = item as? HewanLaut{
        print("nama hewan: \(hewanLaut.ikan) jenis kelamin: \(hewanLaut.kelamin)")
    }
}


//pertemuan 5  subscript
//subscript adalah semua akses yang ada di collection list seperti class, struct dan enum
// cara untuk mengakses informasi dari himpunan, barisan dan list tanpa menggunakan metode
//setiap subscript harus ada get dan set

//subscript (index: Int) -> Int{
//    get{
//get fungsi return subsript

//  }
//    set(newValue){
// Setting Action

//  }
//}

struct TimesTable{
    let multiplier : Int
    subscript(index: Int) -> Int{
        return multiplier * index
    }
}

let threeTimesTable = TimesTable(multiplier: 3)
print("6 x 3 = \(threeTimesTable[6])")

//penggunaan class
class DaysOfWeek{
    private var days = ["Senin","Selasa", "Rabu", "Kamis", "Jumat", "Sabtu", "Minggu"]
    subscript(index: Int) -> String{
        get{
            return days[index]
        }
        set(newValue){
            self.days[index] = newValue
        }
    }
}
var p = DaysOfWeek()
print(p[6])

p[0] = "Monday"
print(p[0])



//enum
enum Planet: Int{
    case mercury = 1, venus, earth, mars, jupiter, saturn, uranus, neptune
    static subscript(n :Int)-> Planet{
        return Planet(rawValue: n)!
    }
}
let mars = Planet[4]
print(Planet[2])
//static vari
//static adalah value dishare ke semua object dari kelasnya
//Deklarasi Static

class Murid{
    static let section: String = "A"
    static var day : String = "Monday"
    var name : String = "Andika"
    var num : Int = 1
}

let student1 = Murid()
print(student1.name)
print(student1.num)
student1.name = "Dodit"
print(student1.name)

let student2 = Murid()
print(student2.name)
student2.num = 2
print(student2.num)


print(Murid.section)
print(Murid.day)


//Generics code
// code yang multi fungsi
//analogi generic
/*
 protocol Company{
 func buy(product: String, money: Money)
 func sell(product: String.Type, money: Money) -> T?
 }*/
/*
 setelah Generic
 protocol Company{
 func buy<T: Legal>(product: T, money: Money)
 func sell<T: Legal>(product: T.Type, money: Money) -> T?
 }*/


let intArray = [1,2,3,4,5]
let stringArr = ["ios", "Android", "Web"]

func printIntArray(arr:[Int]){
    arr.map{print($0)}
}
func printStringArr(arr:[String]){
    arr.map{print($0)}
}
printIntArray(arr: intArray)
printStringArr(arr: stringArr)

func printAllArray<T>(arr:[T]){
    arr.map{print($0)}
}

printAllArray(arr: intArray)
printAllArray(arr:stringArr)

//generic func with multple parameter
func anotherMethode<T, U> (first: T, second: U){print("first one called")}
func anotherMethode<Z> (first: Z, second: Z){print("Second one called")}

anotherMethode(first: 123, second: "456") // Z - Int, U-String
anotherMethode(first: 123, second: 123)//Z-Int


//guard
// memudahkan kamu saat mereturn value kita langsung, ketika kondisikita tidak langsung
// mirip dengan if else kondition
//lebih jelas dan lebih efesien

for i in 1...10{
    guard i.isMultiple(of: 2) else {
        continue
    }
    print(i)
}


//bahasa sederhana
/*func login(){
guard let userName = userNameField?.text else{
 return throw error
 }
}*/
