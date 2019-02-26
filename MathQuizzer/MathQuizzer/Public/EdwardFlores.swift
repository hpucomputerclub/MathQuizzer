//
//  EdwardFlores.swift
//  MathQuizzer
//
//  Created by Student on 2/25/19.
//  Copyright © 2019 HPUComputerClub. All rights reserved.
//

import UIKit

extension Main{
    
    func calculateRightAnswer(){
        correctAnswer = firstNumber operation secondNumber
    }
    
    func rand(min:Int, max: Int) -> Int{
        return Int.random(in: min..<max+1)
    }
    
    func resetOperation(){
        let randomNumber = rand(min:1,max:4)
        switch(randomNumber){
        case 1:
            operation = "+"
            break
        case 2:
            operation = "-"
            break
        case 3:
            operation = "*"
            break
        case 4:
            operation = "/"
            break
        default:
            break
        }
    }
    
    func resetVariables(){
        resetOperation()
        firstNumber = rand(min:1,max:100)
        secondNumber = rand(min:1,max:100)
        updateAllLabels()
        }
}
