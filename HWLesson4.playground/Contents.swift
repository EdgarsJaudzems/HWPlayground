import UIKit

//MARK: - HW4
/*
 Exercise 1
 Declare myTeam as Girls or Boys.
 Create a Dictionary resultsOfGames where Key contains teamName as String and Value of two [String] results.
 Print the output, for example:
 Girls against Brooklyn Nets scored - 99:89
 Girls against Brooklyn Nets scored - 109:99
 Girls against Dallas Mavericks scored - 87:93
 Girls against Dallas Mavericks scored - 104:97
 Girls against Washington Wizards scored - 117:112
 Girls against Washington Wizards scored - 107:122
 */

var myTeam = "Boys"
var resultsOfGame = [
    "Dinamo"    : ["0 : 2" , "1 : 3"],
    "Jokerit"   : ["3 : 1" , "1 : 3"],
    "CSKA"      : ["0 : 3" , "1 : 3"]
]

for (team, score) in resultsOfGame {
    print("\(myTeam) against \(team) scored \(score[0])")
    print("\(myTeam) against \(team) scored \(score[1])")
}

/*
 Exercise 2
 Declare an Array of Int. In the wallet you have only 1x by 5 - 500 EUR.
 Create a func to calculateCash sum of your cash inside your wallet.
 Run the func.
 */

let wallet = [5, 10, 20, 50, 100, 200, 500]

func calcualteCash(cash: [Int]) -> Int {
    var sum = 0
    
    for i in wallet {
        sum = sum + i
    }
    print("You have \(sum)EUR in cash inside your wallet right know!")
    return sum
}

calcualteCash(cash: wallet)


/*
 Exercise 3
 Create a func isEvenNumber to calculate if a number is odd or even. If the number is even func should return true.
 Run the func.
 */

func isEvenNumber(number: Int) -> Bool {
    if number % 2 == 0 {
        return true
    } else {
        return false
    }
}

isEvenNumber(number: 23)

/*
 Exercise 4
 Create a func createArray to calculate some number from start: to end: than return Int array.
 Declare array and put createArray(from: 1, to: 100)
 print(array)
 */

func createArray(from start: Int, to end: Int)  -> [Int] {
    var tempArray: [Int] = []
    let range = start...end
    for i in range {
        tempArray.append(i)
    }
    return tempArray
}

var array = createArray(from: 1, to: 100)
print(array)

/*
 Exercise 5
 Create for loop.
 Use array result from Exercise 4.
 Use isEvenNumber from Exercise 3.
 Calculate and remove isEvenNumber using if array.firstIndex of number, inside the if array.remove at index.
 It should be 1/2 of createArray and started from [1,3,5.....
 */

print("------------------")

for i in array {
    if isEvenNumber(number: i) {
        array.remove(at: array.firstIndex(of: i)!)
    }
}
print(array)

