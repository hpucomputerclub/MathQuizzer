//
//  Chase Lee.swift
//  MathQuizzer
//
//  Created by Student on 2/25/19.
//  Copyright © 2019 HPUComputerClub. All rights reserved.
//

import UIKit

extension Main{
    /*==============================
     Title: Wrong Pop Up
     Input: None
     Return: None
     
     Description:
     1. This method should use popUp() to display a wrong message
     */
    func wrongPopUp(){
        popUp(title: "Wrong Answer", message: "Sorry, please try again!")
    }
    func correctPopUp(){
        popUp(title: "Correct Answer", message: "Nice job!")
    }
    
}
