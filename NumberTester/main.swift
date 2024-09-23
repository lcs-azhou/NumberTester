//
//  main.swift
//  NumberTester
//
//  Created by Ansheng Zhou on 2024-09-23.
//

import Foundation

//func getInput(prompt: String) -> Int {
//    
//    while true {
//        print(prompt)
//        
//        if let input = readLine(), let number = Int(input) {
//            
//            if number < 1 || number > 32500 {
//                print("Try again with e a number that is more or equals to 1, and less than 32500")
//            } else {
//                return number
//            }
//        }
//    }
//}

func getInput(prompt: String) -> Int {
    
    while true {
        print(prompt)
        
        if let input = readLine(), let number = Int(input), number > 1 || number < 32500{
            
            return number
            
        } else {
            print("Try again with e a number that is more or equals to 1, and less than 32500")
        }
    }
}

func isDivisor(dividend: Int, divisor: Int) -> Bool {
    return dividend % divisor == 0
}

func isProperDivisor(number: Int) -> Bool {
    var properDivisorCount = 0
    
    for i in 1...number - 1 {
        if isDivisor(dividend: number, divisor: i) {
            properDivisorCount += 1
        }
    }
    print(properDivisorCount)
    return properDivisorCount == number
}

func getAllDivisor(start: Int, end: Int) -> [Int] {
    var divisorNumbers = [Int]()
    
    for number in start...end {
        if isProperDivisor(number: number) {
            divisorNumbers.append(number)
        }
    }
    
    return divisorNumbers
}


func mainFunc() {
    let number = getInput(prompt: "Give me a number.")
    
    
    
}

mainFunc()
