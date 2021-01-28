import UIKit

/*
 Exercise 1
 The user opens a deposit in the bank for 5 years in the amount of 500_000 Eur. The interest rate per annum \(rate). Calculate the amount of income \(profit) at the end of the \(period).
 for _ in 1...period{
 }
 print("Amount of income after \(period) years will be \(profit) Eur. My total deposit will be \(deposit) Eur !")
 */

var deposit = 500_000.00
var firstDeposit = deposit
var rate = 1.01
var annualProfit = 0.0
var profit = 0.0
var period = 5

for _ in 1...period {
    annualProfit = (deposit * rate) - deposit
    deposit = deposit + annualProfit
    profit += annualProfit
}

var depositRounded = String(format: "%.2f", deposit)
var profitRounded = String(format: "%.2f", profit)

print("Amount of income after \(period) years with start deposit of \(firstDeposit) and interest rate \(rate) per annum will be \(profitRounded) Eur. My total deposit will be \(depositRounded) Eur!")

/*
 Exercise 2
 Create an integer array with any set of numbers and  print("My even numbers are: \(evenNumber)")
 Use a % inside the for loop.
 */

let intArray = [1, 5, 10, 20, 23, 35, 50, 32, 92, 128]
var evenNumber = [Int]()

for i in intArray {
    if i % 2 == 0 {
        evenNumber += [i]
    }

}
print("My even numbers are: \(evenNumber)")

/*
 Exercise 3
 Inside the for loop create randomNumber for the random Int calculation. Calculate and print("Number 5 will be after \(counter) shuffles"). Don't forget to make a break inside the if statement.
 */

var counter = 0
var randomNumber: Int

for _ in 1... {
  randomNumber = Int.random(in: 1...100)
  counter += 1
  if randomNumber == 5 {
    break
  }
}
print("Number 5 will be after \(counter) shuffles")

/*
 Exercise 4
 A bug is climbing to a 10-meter electric post. During the day, bug can climb two meters, during the night she slides down to 1 meter. Determine with the help of the cycle how many days bug will climb on the top of the post. Think about which loop to use in which situation. print("bug will spend \(numberOfDays)) to reach top of the post")
 */

let electricPost = 10
let daySpeed = 2
let nightSpeed = -1
var bugClimb = 0
var numberOfDays = 0

while true {
   bugClimb += daySpeed + nightSpeed
    numberOfDays += 1
    if bugClimb == electricPost {
        print("Bug will spend \(numberOfDays) days to reach top of the post")
        break
    }
}

