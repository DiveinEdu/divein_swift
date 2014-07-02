//
//  ViewController.swift
//  NoteApp
//
//  Created by WuQiong on 6/18/14.
//  Copyright (c) 2014 长沙戴维营教育. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var noteTextView : UITextView
                            
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func didOpenClicked(sender : AnyObject) {
//        var str = NSString(contentsOfFile: "/Users/cheetah/Desktop/file.txt")
//        noteTextView.text = str
        
//        var arr = NSArray(contentsOfFile: "/Users/cheetah/Desktop/file.txt")
//        println("\(arr)")
        
        var dict = NSDictionary(contentsOfFile: "/Users/cheetah/Desktop/file.txt")
        println("\(dict)")
    }

    @IBAction func didSaveClicked(sender : AnyObject) {
//        var str: NSString = noteTextView.text
//        str.writeToFile("/Users/cheetah/Desktop/file.txt", atomically: true, encoding: NSUTF8StringEncoding, error: nil)
        
//        var arr: NSArray = [1, 2, 4, 5]
//        arr.writeToFile("/Users/cheetah/Desktop/file.txt", atomically: true)
        
        var dict: NSDictionary = ["name": "张三", "age": "32"]
        dict.writeToFile("/Users/cheetah/Desktop/file.txt", atomically: true)
        
        //NSString, NSArray, NSDictionary
        //字符串，整数，浮点数...
    }
    
    @IBAction func didTapped(sender : AnyObject) {
        self.view.endEditing(true)
    }
}

