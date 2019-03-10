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
    var firstNumber = 0{
        didSet{
            updateFirstNumberLabel()
        }
    }
    var secondNumber = 0{
        didSet{
            updateSecondNumberLabel()
        }
    }
    var operation = "+"{
        didSet{
            updateOperationLabel()
        }
    }
    var userAnswer = 0
    var correctAnswer = 0
    var enteredAnswer = "0"
    
    
    //Outlets
    @IBOutlet weak var firstNumberLabel: UILabel!
    @IBOutlet weak var operationLabel: UILabel!
    @IBOutlet weak var secondNumberLabel: UILabel!
    @IBOutlet weak var answerTextField: UITextField!
    
    //View Loading
    override func viewDidLoad() {
        super.viewDidLoad()
        resetVariables()
        
        
    }
    //IBActions
    @IBAction func enterAnswer_(_ sender: UITextField) {
        //Tried geting answer from sender and did not work because
        //The press check action would run before enter answer and the user
        //Answer was always zero
        
        
    }
    @IBAction func pressCheck_(_ sender: UIButton) {
        
        //This parses the user answer into an int
        glenEnterAnswer()
        
        //Decide which pop up to show
        userAnswer == calcuateRightAnswer() ? (correctPopUp()) : (wrongPopUp())
        
        print("Answer Entered: \(userAnswer)")
        print("Correct Answer: \(calcuateRightAnswer())")
        
    }
    @IBAction func pressNewQuestion_(_ sender: Any) {
        resetVariables()
    }
    
    
    
    //Glen
    func glenEnterAnswer(){
        enteredAnswer = answerTextField.text ?? "0"
        if let num = Int(enteredAnswer){//Int type - impossible to be nil
            //parse was good
            self.userAnswer = num;
            print("Answer was parsed correctly")
        }else{
            //parse failed
            print("Answer was parsed incorrectly")
            self.popUp(title: "Error", message: "Please try again, that number is not valid.")
        }
        
        
    }
    
    
    //Chase
    func wrongPopUp(){
        popUp(title: "Wrong Answer", message: "Sorry, please try again!")
    }
    func correctPopUp(){
        popUp(title: "Correct Answer", message: "Nice job!")
    }
    
    
    //Chris
    
    func updateSecondNumberLabel(){
        secondNumberLabel.text = "\(secondNumber)"
    }
    func updateOperationLabel(){
        operationLabel.text = "\(operation)"
    }
    
    
    
    //Eddy
    func calcuateRightAnswer() -> Int{
        switch operation{
        case "+":
            correctAnswer = firstNumber + secondNumber
            break
        case "-":
            correctAnswer = firstNumber - secondNumber
            break
        case "*":
            correctAnswer = firstNumber * secondNumber
            break
        case "/":
            correctAnswer = firstNumber / secondNumber
            break
        default:
            break
            
        }
        return correctAnswer
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
        answerTextField.text = ""
    }
    
    
    
    
    
    
    //Kevin
    func updateFirstNumberLabel(){
        firstNumberLabel.text = "\(firstNumber)"
    }
    
    
    //Zach
    
    func popUp(title: String,message: String){
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        present(alert, animated: true, completion: nil)
    }
    
    /*
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
     }*/
    
    
    
    
    /* METHODS/TASKS TO BE ASSIGNED
     // CHECK GOOGLE DOCS: https://docs.google.com/spreadsheets/d/1QmvA76TZ7qybKmYNmHbCYON_RTtds1rICg212rFW6AA/edit#gid=0
     to pick an open task
     When copying to your file - Remove the comment marks ('//') by the 'func' and '}' - if included
     */
    
    /*==============================
     Title: Update Label for First Number
     Input: None
     Return: None
     
     Description:
     1. Use the outlet for the first number label.
     2. Take the firstNumber variable and update the label in the storyboard
     */
    //func updateFirstNumberLabel(){
    
    //}
    
    
    /*==============================
     Title: Update Label for Second Number
     Input: None
     Return: None
     
     Description:
     1. Use the outlet for the second number label.
     2. Take the secondNumber variable and update the label in the storyboard
     */
    //func updateSecondNumberLabel(){
    
    //}
    
    /*==============================
     Title: Update Label for Operation
     Input: None
     Return: None
     
     Description:
     1. Use the outlet for the operation label.
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
     Title: Update User Answer
     Input: None
     Return: None
     
     Description:
     1. This method should update the userAnswer variable
     2. Use enterAnswer as shown below
     */
    //enterAnswer = { (String) -> ()) in
    
    //}
    
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
    //pressCheck = { () -> ()) in
    
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
    
    /*==============================
     Title: New Question Button
     Input: None
     Return: None
     
     Description:
     1. Write the pressNewQustion method like shown below
     2. call resetVariables()
     */
    
    //pressNewQuestion = { () in
    
    
    //}
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}

