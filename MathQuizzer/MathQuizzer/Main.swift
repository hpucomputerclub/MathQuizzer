//
//  ViewController.swift
//  MathQuizzer
//
//  Created by Kevin Chevalier on 1/27/19.
//  Copyright © 2019 HPUComputerClub. All rights reserved.
//


// RULES and DIRECTIONS
//======================================================================
// 1. This is the Main File: DO NOT EDIT!!! [[Very Important]]
// 2. Any progress made on this file may be deleted
// 3. Objective: Everyone is going to take a small piece of the project to complete and learn the process of App Development along the way.
// 4. Ask for HELP if you are stuck. You can email Kevin and Zach at: kchevali@my.hpu.edu or zkline@my.hpu.edu or bring it up at the next meeting. Mondays @ 5:30 in ATM Room 1
// 5. To contribute to the project, create a new file under "Public" with your name from the Template
// 6. All your contributions must be done in one file
// 7. Use the google sheets link below to pick a task with your name.
// 8. You should not pick a task that was already assigned
// 8. Descriptions on the tasks are listed below
// 9. You should use the variables below to complete your tasks
// 10. If your task requires that a previous task to be completed then just use it as if it was and comment out the errors.
// 11. To SUBMIT your changes. Go to: Source Control > Commit...
//          Check off your file and ONLY that file.
//          Check off the 'push to remote' button
//          Select origin/master
//          Press Submit
// 11. Check your work before submitting and NO RED ERRORS!!!
//======================================================================


import UIKit

class Main: UIViewController {
    
    //VARIABLES -- stores the info for the app. Use when needed
    var firstNumber = 0
    var secondNumber = 0
    var operation = "+"
    var userAnswer = 0
    var correctAnswer = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    /* METHODS/TASKS TO BE ASSIGNED
     // CHECK GOOGLE DOCS: https://docs.google.com/spreadsheets/d/1QmvA76TZ7qybKmYNmHbCYON_RTtds1rICg212rFW6AA/edit#gid=0
     to pick an open task
 */
    
     /*==============================
     Title: Update Label for First Number
     Input: None
     Return: None
     
     Description:
        1. Create an outlet for the first number label.
        2. Take the firstNumber variable and update the label in the storyboard
     */
     //func updateFirstNumberLabel(){
     
     //}
     
     
    /*==============================
     Title: Update Label for Second Number
     Input: None
     Return: None
     
     Description:
     1. Create an outlet for the second number label.
     2. Take the secondNumber variable and update the label in the storyboard
     */
    //func updateSecondNumberLabel(){
    
    //}
    
    /*==============================
     Title: Update Label for Operation
     Input: None
     Return: None
     
     Description:
     1. Create an outlet for the operation label.
     2. Take the operation variable and update the label in the storyboard
     */
    //func updateOperationLabel(){
    
    //}
    
    /*==============================
     Title: Update All Labels
     Input: None
     Return: None
     
     Description:
     1. Call all the methods that update a label. (first/second number and operation)
     */
    //func updateAllLabels(){
    
    //}
    
    /*==============================
     Title: Update User Answer Variable
     Input: None
     Return: None
     
     Description:
     1. Use the storyboard to create an IBAction for the Answer Textfield
     2. Update the userAnswer variable
     */
    
    /*==============================
     Title: Calculate the Correct Answer
     Input: None
     Return: None
     
     Description:
     1.
     1. Calculate the correct answer with firstNumber, secondNumber and
     2. Save the answer to the correctAnswer variable
     */
    //func calcuateRightAnswer(){
    
    //}
    
    /*==============================
     Title: Pop Up
     Input: Title and Message - Strings
     Return: None
     
     Description:
     1. This method should take any title and message and make a pop up with it.
     2. Also add an ok button to it
     */
    //func popUp(title: String, message: String){
    
    //}
    
    /*==============================
     Title: Correct Pop Up
     Input: None
     Return: None
     
     Description:
     1. This method should use popUp() to display a correct message
     */
    //func correctPopUp(){
    
    //}
    
    /*==============================
     Title: Wrong Pop Up
     Input: None
     Return: None
     
     Description:
     1. This method should use popUp() to display a wrong message
     */
    //func wrongPopUp(){
    
    //}
    
    /*==============================
     Title: Check Answer
     Input: None
     Return: None
     
     Description:
     1. This method should compare the correctAnswer and userAnswer variable
     2. If they are same, use correctPopUp()
     3. Otherwise, use wrongPopUp
     */
    //func checkAnswer(){
    
    //}
    
    /*==============================
     Title: Check Button
     Input: None
     Return: None
     
     Description:
     1. Link the Check Button to checkAnswer() with an IBAction in the storyboard
     */
    
    /*==============================
     Title: Random Number
     Input: Min and Max - Integers
     Return: Random number - Integer
     
     Description:
     1. Return a random number in between the min and max values
     */
    
    //func rand(min: Int, max: Int) -> Int{
    
    //}
    
    /*==============================
     Title: Reset Operation
     Input: None
     Return: None
     
     Description:
     1. Use rand() to generate a random number between 1 to 4
     2. Assign the operation variable to the corresponding operation
        1 -> +, 2 -> -, 3 -> *, 4 -> /
     */
    
    //func resetOperation(){
    
    //}
    
    /*==============================
     Title: Reset Variables
     Input: None
     Return: None
     
     Description:
     1. Use resetOperation()
     2. use rand() to generate a random number from 1 - 100 for the firstNumber and secondNumber variables
     3. Use updateAllLabels()
     */
    
    //func resetVariables(){
    
    //}

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 


}

