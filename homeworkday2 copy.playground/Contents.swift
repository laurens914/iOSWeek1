import UIKit

//Question 1:

var solarSystem = ["Mercury","Venus","Mars","Jupiter","Saturn", "Uranus", "Neptune"]
solarSystem
func includeEarth()
{
    if solarSystem.contains("Earth"){
    print(solarSystem)
    } else {
   solarSystem.append("Earth")
        print(solarSystem)
    }
}
includeEarth()


//Question 2:Use reduce to create single string from the above array. [“Venus”, “Earth”] would produce “Venus, Earth”

let evString = solarSystem.reduce("") {"\($0)  \($1),"}
evString


//Question 3:

var seahawksPlayers: [Int : String] = [3 : "Wilson", 4 : "Hauschka", 24 : "Lynch", 25 : "Sherman", 89 : "Baldwin"]

//Question 4:

var groceryList = ["fruit" : "Apples", "vegitables" : "Carrots", "cheese" : "Cheddar", "cookies" : "Oreos"]

 groceryList.filter { (cookies) -> Bool in 
    let values = groceryList.values
    return values.contains("Oreos")
}


//Question 5:

let emojiSetOne: Set = ["😝","😥","🤒","😒","🎉"]
let union = emojiSetOne.union(["😴","🐘","🐻","😝","😥"])
let intersect = emojiSetOne.intersect(["🤒","😒","🙂","😂"])
let subtract = emojiSetOne.subtract(["🎉","🙈","😝","🙂"])





