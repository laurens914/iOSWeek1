import UIKit
//Question 1:
func ages (age: String? = nil) -> Int? {
    guard let result = age else { return nil }
    return Int(result)
}
ages("25")
ages("Lauren")


//Question 2:
let tuple:(message:String, code: Int) = ("okay!", 200)
func tupleReturn () {
    print ("the Status back was \(tuple.message) with a code of \(tuple.code)")
}
tupleReturn()

//Question 3: 

let cityName = "seattle"

func cityNameLength () {
    print("String contains \(cityName.characters.count) characters")
}
cityNameLength()


//Question 4:
var name = "lauren"
var reverseName = ""

for character in name.characters {
    reverseName = String(character) + reverseName
}
print(reverseName)












