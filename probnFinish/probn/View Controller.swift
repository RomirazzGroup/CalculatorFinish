//
//  View Controller.swift
//  probn
//
//  Created by Family on 14.03.2021.
//


import UIKit

class ViewController: UIViewController {
    
    var secondNum : Double = 0
    var firstNum : Double = 0
    var proverka = false
    var operation : Int = 0
    
    
    @IBOutlet weak var result: UILabel!
    
    @IBAction func didgits(_ sender: Any) {
        let tagButton = (sender as! UIButton).tag
        if proverka == true{
            result.text = String(tagButton)
            proverka = false
        } else {
            
            result.text = result.text! + String(tagButton)
            
        }
        secondNum = Double(result.text!)!
        
    }
    @IBAction func buttons(_ sender: Any) {
        let tagButton = (sender as! UIButton).tag
        if result.text != "" && tagButton != 10 && tagButton != 17{
            firstNum = Double(result.text!)!
        }
        
        if tagButton == 10 {
            result.text = "0"
            secondNum = 0
            firstNum = 0
        }
        
        if tagButton == 13 {
            result.text = "/"
            operation = tagButton
            proverka = true
        }else if tagButton == 14 {
            result.text = "x"
            operation = tagButton
            proverka = true
        }else if tagButton == 15 {
            result.text = "-"
            operation = tagButton
            proverka = true
        }else if tagButton == 16 {
            result.text = "+"
            operation = tagButton
            proverka = true
        } else if tagButton == 17 {
            if operation == 13 {
                result.text = String(firstNum / secondNum)
            }else if operation == 16 {
                result.text = String(firstNum + secondNum)
            }else if operation == 15{
                result.text = String(firstNum - secondNum)
            }else if operation == 14{
                result.text = String(firstNum * secondNum)
            }
        }
    }
    
}
