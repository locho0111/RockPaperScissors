//
//  ViewController.swift
//  RockPaperScissors
//
//  Created by Loc.Ho on 9/10/19.
//  Copyright © 2019 Loc.Ho. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    var NewGame = true;
    
    func Random() -> String? {
        let ComputerSelection = ["Rock", "Paper", "Scissor"]
        return ComputerSelection.randomElement()
    }

    
    
    
    @IBOutlet weak var PlayerLabel: UILabel!
    
    @IBOutlet weak var ComputerLabel: UILabel!
    
    @IBOutlet weak var ResultLabel: UILabel!
    
    @IBAction func RockPressed(_ sender: Any) {
        if NewGame == true {
            PlayerLabel.text = "You picked Rock"
            
            NewGame = false
            
            let ComputerTurn = Random()
            
            ComputerLabel.text = "Computer picked \(ComputerTurn!)"
            if ComputerTurn! == "Rock"
            {
                ResultLabel.text = "Draw!"
            }
            else if ComputerTurn! == "Paper"
            {
                ResultLabel.text = "You lose!"
            }
            else
            {
                ResultLabel.text = "You win!"
            }
        }
        else{
            PlayerLabel.text = "Please hit the NEW GAME button"
        }
        
    }
    
    
    @IBAction func PaperPressed(_ sender: Any) {
        if NewGame == true {
            PlayerLabel.text = "You picked Paper"
            
            NewGame = false
            
            let ComputerTurn = Random()
            
            ComputerLabel.text = "Computer picked \(ComputerTurn!)"
            if ComputerTurn! == "Rock"
            {
                ResultLabel.text = "You win!"
            }
            else if ComputerTurn! == "Paper"
            {
                ResultLabel.text = "Draw!"
            }
            else
            {
                ResultLabel.text = "You lose!"
            }
            
        }
        else{
            PlayerLabel.text = "Please hit the NEW GAME button"
        }
    }
    
    
    
    @IBAction func ScissorPressed(_ sender: Any) {
        if NewGame == true {
            PlayerLabel.text = "You picked Scissors"
            
            NewGame = false
            
            let ComputerTurn = Random()
            
            ComputerLabel.text = "Computer picked \(ComputerTurn!)"
            if ComputerTurn! == "Rock"
            {
                ResultLabel.text = "You lose!"
            }
            else if ComputerTurn! == "Paper"
            {
                ResultLabel.text = "You win!"
            }
            else
            {
                ResultLabel.text = "Draw!"
            }
        }
        else{
            PlayerLabel.text = "Please hit the NEW GAME button"
        }
    }
    
    

    @IBAction func NewGamePressed(_ sender: Any) {
        PlayerLabel.text = "Pick one"
        ComputerLabel.text = "Computer's waiting..."
        ResultLabel.text = ""
        NewGame = true
        
    }
    
    
    
    
    
    
    
    
}

