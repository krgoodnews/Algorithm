import Foundation

/*

 30 Days of Code

*/

// Day2
//func solve(meal_cost: Double, tip_percent: Int, tax_percent: Int) -> Void {
//  let tip = meal_cost * (Double(tip_percent) / 100)
//  let tax = meal_cost * (Double(tax_percent) / 100)
//
//  let totalCost: Int = Int((meal_cost + tip + tax).rounded())
//  print(totalCost)
//}

// Day 3: Intro to Conditional Statements
//guard let N = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
//  else { fatalError("Bad input") }
//let N: Int = 100
//
//let isOdd = N % 2 != 0
//
//if isOdd {
//  print("Weird")
//} else if (2...5).contains(N) {
//  print("Not Weird")
//} else if (6...20).contains(N) {
//  print("Weird")
//} else {
//  print("Not Weird")
//}


// Day 4: Class vs. Instance
//class Person {
//  var age: Int = 0
//
//  init(initialAge: Int) {
//    // Add some more code to run some checks on initialAge
//    if initialAge < 0 {
//      print("Age is not valid, setting age to 0.")
//      self.age = 0
//      return
//    }
//
//    self.age = initialAge
//  }
//
//  func amIOld() {
//    // Do some computations in here and print out the correct statement to the console
//    if age < 13 {
//      print("You are young.")
//    } else if (13..<18).contains(age) {
//      print("You are a teenager.")
//    } else {
//      print("You are old.")
//    }
//  }
//
//  func yearPasses() {
//    // Increment the age of the person in here
//    self.age += 1
//  }
//}

//Day 5: Loops
//let n: Int = 100
//(1...10).forEach { i in
//  print(n, "x", i, "=", n * i)
//}


//Day 6: Let's Review
//let numStrings = Int(readLine()!)!
//
//func printEvenAndOdd(string: String) {
//  // This prints inputString to stderr for debugging:
//  fputs("string: " + string + "\n", stderr)
//  var oddIndexString = ""
//  var evenIndexString = ""
//
//  for (i, ch) in string.enumerated() {
//    if i % 2 == 0 {
//      evenIndexString.append(ch)
//    } else {
//      oddIndexString.append(ch)
//    }
//  }
//
//  // Print the even-indexed characters
//  // Write your code here
//  print(evenIndexString, terminator: "")
//
//  // Print a space
//  print(" ", terminator: "")
//
//  // Print the odd-indexed characters
//  // Write your code here
//  print(oddIndexString, terminator: "")
//
//  // Print a newline
//  print()
//}
//for _ in 1...numStrings {
//  let inputString = readLine()!
//  printEvenAndOdd(string: inputString)
//}


// Day 7: Arrays
//let arr = [1, 4, 3, 2]
//let reversedArr: [String] = arr.reversed().map { String($0) }
//let stringResult = reversedArr.joined(separator: " ")
//print(stringResult)


// Day 8: Dictionaries and Maps
let n = 3

var dic: [String: String] = [:]

for _ in 0..<n {
  let input = readLine()!.split(separator: " ")
  let key = String(input[0])
  let value = String(input[1])

  dic[key] = value
}

print("end")

