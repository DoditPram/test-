import UIKit

var str = "Hello, playground"


//collection
//1. array

var songs : [String] = ["Dia", "Bobo", "CLBK"]
songs.isEmpty//mengecek kosong atau tidak
songs.count //nilai/kotak dalam array
songs.append("LALALA") // untuk menambahkan

print(songs)
print(songs.count)

songs.insert("CD", at: 4)// menambahkan array
print(songs[2])// mengeprint indexnya
print(songs.capacity)// melihat kapasitas
print(songs.remove(at: 4))
print(songs.removeAll())// menghapus semua

//Array looping
for song in songs {
    if songs.firstIndex(of: song)! + 1 == 5 {
        print("love \(songs.firstIndex(of: song)! + 1).\(song)")
    }else{
        print("\(songs.firstIndex(of: song)! + 1).\(song)")
    }
}

songs.forEach{ song in
    if songs.firstIndex(of: song)! + 1 == 5 {
            print("love \(songs.firstIndex(of: song)! + 1).\(song)")
        }else{
            print("\(songs.firstIndex(of: song)! + 1).\(song)")
        }
}

//array dalam array
let mahluk : [String: [String]] = ["Mammals":["kucing", "Sapi",], "Serangga": ["Nyamuk", "Kecoa"]]


//mengisi array yang ksoong
var filmCatagory : [String:[String]] = [:]
filmCatagory["Action"] = ["a", "b"]
filmCatagory["Drama"] = ["c", "d"]
filmCatagory["horror"] = ["e", "f"]

filmCatagory.forEach { film in //loopingan pertama buat "film"
    print(film.key)
    for films in film.value{ //loopingan ke dua buat key/ valuenya
        print("-\(films)")
    }
    print("\n")
}
print(filmCatagory)
print(filmCatagory.keys) //print katagorinya
print(filmCatagory.values) //print nilai yang ada dalam katagorinya




//2.set

var musicGenre = Set<String>()
musicGenre.isEmpty //mengosongkan Array
musicGenre.count // menambahkan
musicGenre.capacity //melihat capacity
musicGenre.insert("Rock")
musicGenre.insert("Jazz")

print(musicGenre)

for genre in musicGenre{
    print(genre)
}



//tugas pertemuan
// melihat followers yang ada di temen saya

//1. following saya a b c
//2. following teman c d e
//yang di follow teman saya dan saya = c

var followingSaya: Set<String> = ["a", "b", "c"]
 print(followingSaya)
var followingTeman : Set<String> = ["e", "d", "c"]
 print(followingTeman)
let bothWeFollowing = followingSaya.intersection(followingTeman)
print(bothWeFollowing)

//Cara ke 2
for follower in followingSaya{
    for follower1 in followingTeman{
        if follower == follower1{
            print(follower)
        }
    }
}


//3. dictionary
var MakananDictionary = [
                        "Tempe" : 1,// "value":Key
                        "Sosis" : 2,
                        "Tahu" : 3,
                        "Nasi" : 4,]

let searchCharfor = "Tahu" //mendcari kata tahu
let doesExist = MakananDictionary[searchCharfor]

MakananDictionary.isEmpty
MakananDictionary["kubis"] = 5 
MakananDictionary.removeAll()
print(doesExist)



//enum atau pembungkusan type data

enum arahMataAngin{
    case utara
    case timur
    case selatan
    case barat
}
    let arahDirection: arahMataAngin = .barat
if arahDirection == .selatan{
        print ("Jalan")
}else{
    print("Stop")
}

enum color {
    case unknown
    case red
    case white
    case black
    case blue
}
struct Toy {
    let name: String
    let color: color
}

var boneka = Toy(name: "Berbie", color: .black)

enum gender {
    case male
    case female
}
enum ocupation {
        case mahasiswa
        case pelajar
        case wiraswasta
        case programmer
}
enum agama {
    case islam
    case kristen
    case budha
}
struct citizen {
    let name : String
    let gender : gender
    let pekerjaan : ocupation
    let agama : agama
    
}
var pelanggan = citizen(name: "Dodit", gender: .male, pekerjaan: .programmer, agama: .islam)


print (pelanggan)
print (pelanggan.agama)

