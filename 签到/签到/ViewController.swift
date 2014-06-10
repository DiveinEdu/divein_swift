//
//  ViewController.swift
//  签到
//
//  Created by WuQiong on 6/10/14.
//  Copyright (c) 2014 长沙戴维营教育. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var nameTextField : UITextField
    
//    var nameArray = Array<String>()
    var nameArray = String[]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        var array1 = [1, 2, 3, 4]
        var array2 = [5, 6, 7, 8]
        var array = array1 + array2
        
        for value in array {
            println("\(value)...")
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func checkInClieck(sender : AnyObject) {
        var name = nameTextField.text
        nameArray.append(name)
    }
    
    @IBAction func reviewClicked(sender : AnyObject) {
//        for var index = 0; index < nameArray.count; index++ {
//            println("\(index): \(nameArray[index])")
//        }
        
        //快速枚举
        var index = 0
        for name in nameArray {
            println("\(index): \(name)")
            index++
        }
    }
}

