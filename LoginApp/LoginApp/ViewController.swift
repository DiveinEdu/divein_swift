//
//  ViewController.swift
//  LoginApp
//
//  Created by WuQiong on 6/10/14.
//  Copyright (c) 2014 长沙戴维营教育. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
                            
    @IBOutlet var usernameTextField : UITextField
    @IBOutlet var passwordTextField : UITextField
    
    @IBOutlet var resultLabel : UILabel
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        println(usernameTextField.text)
        println(passwordTextField.text)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //function, method
    @IBAction func didLoginClicked(sender : UIButton) {
        let username = usernameTextField.text
        let password = passwordTextField.text
        
        //admin/666666
        if username == "admin" && password == "666666" {
            resultLabel.text = "login success!"
        }
        else {
            resultLabel.text = "username or password error!"
        }
    }

}

