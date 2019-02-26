//
//  EdwardFlores.swift
//  MathQuizzer
//
//  Created by Student on 2/25/19.
//  Copyright © 2019 HPUComputerClub. All rights reserved.
//

import UIKit

extension Main{
    
    func calcuateRightAnswer(){
        correctAnswer = firstNumber+secondNumber
    }
    
    func rand(min:Int, max: Int) -> Int{
        return Int.random(in: min..<max+1)
    }
    
}
