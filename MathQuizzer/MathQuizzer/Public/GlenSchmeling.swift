//
//  Template.swift
//  MathQuizzer
//
//  Created by YOUR NAME on DATE.
//  Copyright © 2019 HPUComputerClub. All rights reserved.
//

/*
 This is the base file for your contributions
 Make sure it includes your name in the file name and above
 To create a file:
 Go to: File > New > File.. > Swift File > Next
 Choose the Public Folder
 Rename file to your own name    i.e. KevinChevalier.swift
 Press Done
 Copy and paste this file to your own file
 */

import UIKit

extension Main{
    /*Insert Assignments In HERE*/
    /*==============================
     Title: Update User Answer
     Input: None
     Return: None
     
     Description:
     1. This method should update the userAnswer variable
     2. Use enterAnswer as shown below
    */
    
    func glenEnterAnswer(){
        enterAnswer = { (_ text: String) in
            
            if let num = Int(text){//Int type - impossible to be nil
                //parse was good
                self.userAnswer = num;
            }else{
                //parse failed
                self.popUp(title: "Error", message: "Please try again, that number is not valid.")
                
            }
            
            /*closure is where you save a method inside a variable  look at line  #45 in main for declaration of closure
             
             line 45: var enterAnswer: (_ text: String) -> () = {_ in }   input method (parameters) output method (return type), actual method
             every time you access to a method of variable use the self.
             
             let num2 = Int(text)//Int? <- Optional type
             print("Is num2 null: \(num2 == nil)")
             */
            
        }
    }
    
    
}

