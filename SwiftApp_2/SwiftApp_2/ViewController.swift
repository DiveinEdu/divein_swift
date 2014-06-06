//
//  ViewController.swift
//  SwiftApp_2
//
//  Created by WuQiong on 6/5/14.
//  Copyright (c) 2014 长沙戴维营教育. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
                            
    @IBOutlet var textField1 : UITextField
    @IBOutlet var textField2 : UITextField
    @IBOutlet var resultLabel : UILabel
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        var student = Student()
//        println("student: \(student)")
//        
//        student.print()
        
        println("\(Singleton.sharedInstance)")
        println("\(Singleton.sharedInstance)")
        println("\(Singleton.sharedInstance)")
        println("\(Singleton())")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func didClicked(sender : UIButton) {
        var result: Int = 0 {
            willSet {
                println("newValue: \(newValue)")
            }
            didSet {
                println("oldValue: \(oldValue)")
            }
        }
        
        //String: xxx
        //将字符串转化为整数
        var value1 = self.textField1.text.toInt() //Optional
        var value2 = self.textField2.text.toInt()
        result = value1! + value2!
        
        //生成字符串
        self.resultLabel.text = "\(result)"
    }
}

