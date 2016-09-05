//: Playground - noun: a place where people can play

import UIKit




typealias Guess = (Int, Int, Int, Int, Int, powerball: Int)

let guessOne: Guess = (1, 2, 3, 4, 5, 6)

func play(guess: Guess) -> Double {

    var payOut: Double = 0
    
    let guessNumbers = [guess.0, guess.1, guess.2, guess.3, guess.4, guess.5]
    
    
    let numberOne = arc4random_uniform(100)
    
    let numberTwo = arc4random_uniform(100)
    
    let numberThree = arc4random_uniform(100)
    
    let numberFour = arc4random_uniform(100)
    
    let numberFive = arc4random_uniform(100)
    
    let numberSix = arc4random_uniform(100)
    
    let jackpotNumber = arc4random_uniform(10000)
    
    let lotteryNumbers = [numberOne, numberTwo, numberThree, numberFour, numberFive, numberSix]
    
    for number in guessNumbers {
        if lotteryNumbers.contains(UInt32(number)) {
        
            payOut += Double(jackpotNumber / 10)
            
            
        }
        
    }
    
    if guess.powerball == Int(numberSix) {
        if payOut > Double(jackpotNumber / 10) {
            payOut = payOut * 2
            
            
        }
       
    }
    
    
    return payOut
    
}

play(guess: guessOne)




