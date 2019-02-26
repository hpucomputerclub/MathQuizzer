//
//  ZachKline.swift
//  MathQuizzer
//
//  Created by Zachary Kline on 1/27/19.
//  Copyright © 2019 HPUComputerClub. All rights reserved.
//
/*
 
 This Kline's File get off mi page
 Touch this file and I will find u
 I should get an award for this code
 
 */
import UIKit

extension Main{
    
    /* 3 Steps to create an alert
     1. create the alert using UIAlertController
     2. Add an action to that alert
     3. Present the alert
    */
    
    func popUp(title: String,message: String){
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        present(alert, animated: true, completion: nil)
    }
    
}
