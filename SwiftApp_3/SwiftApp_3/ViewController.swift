//
//  ViewController.swift
//  SwiftApp_3
//
//  Created by WuQiong on 6/6/14.
//  Copyright (c) 2014 长沙戴维营教育. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
                            
    @IBOutlet var resultLabel : UILabel
    
    var operand1: String = ""
    var operand2: String = ""
    var operator: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func didClicked(sender : UIButton) {
        let value = sender.currentTitle
        
        if value == "+" || value == "-" || value == "x" || value == "/" {
            operator = value
            return
        }
        else if value == "=" {
            var result = 0
            switch operator {
                case "+":
                    result = operand1.toInt()! + operand2.toInt()!
                case "-":
                    result = operand1.toInt()! - operand2.toInt()!
                case "x":
                    result = operand1.toInt()! * operand2.toInt()!
                case "/":
                    result = operand1.toInt()! / operand2.toInt()!
                default:
                    result = 0
            }
            
            resultLabel.text = "\(result)"
            
            return
        }
        
        if operator == "" {
            operand1 = operand1 + value
            resultLabel.text = operand1
        }
        else {
            operand2 = operand2 + value
            resultLabel.text = operand2
        }
    }
}

