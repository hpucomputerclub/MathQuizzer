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
 Title: Update Label for Second Number
 Input: None
 Return: None
 
 Description:
 1. Use the outlet for the second number label.
 2. Take the secondNumber variable and update the label in the storyboard
 */
func updateSecondNumberLabel(){
    secondNumberLabel.text = "\(secondNumber)"
}
}
