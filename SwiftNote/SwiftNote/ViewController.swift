//
//  ViewController.swift
//  SwiftNote
//
//  Created by WuQiong on 6/11/14.
//  Copyright (c) 2014 xxx. All rights reserved.
//

import UIKit

func youFunction(var a: Int, b: Int = 123) {
    println("Bad, world!: \(a-b)")
}

class ViewController: UIViewController {
    @IBOutlet var noteTextView : UITextView
    @IBOutlet var notesLabel : UILabel
    @IBOutlet var nameTextField : UITextField
    
    //常见一个数组，数组的元素为字典
    var array = Dictionary<String, String>[]() //String[]
    
    //方法名，参数列表，返回值，方法的实现
    func myFunction(a: Int, b: Int) -> Int {
        println("hello,world!  \(a), \(b)")
        
        return a + b
    }
                            
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var result = myFunction(100, b: 200)
        println("result: \(result)")
        
        //方法调用时，默认第一个参数不需要写标号
        self.myFunction(200, b: 300)
        
        //函数调用的时候，不需要写标号
        youFunction(399, b: 233)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //function
    @IBAction func didSaveClicked(sender : AnyObject) {
        var content = noteTextView.text
        var name = nameTextField.text
        
        //key-value
        //字面常量的方式创建字典，字典的key和value都是字符串类型
        var dict: Dictionary<String, String> = ["name":name, "content":content]
        //创建key和value都是字符串类型的字典对象
//        dict = Dictionary<String, String>()
        
//        dict["name"] = name
//        dict["content"] = content
        
        array.append(dict)
    }
    
    @IBAction func didPrintClicked(sender : AnyObject) {
        self.view.endEditing(true)
        
        var lists = ""
        for var i = 0; i < array.count; i++ {
            var dict = array[i]
            var name: String = dict["name"]! //optinal
            lists = lists + name + "\n"
        }

        notesLabel.text = lists
    }
    
    
    @IBAction func didOpenClicked(sender : AnyObject) {
        var name = self.nameTextField.text
        
        //遍历笔记数组
        for dict in array {
            //获取笔记名称
            var filename = dict["name"]!
            //比较名称，是否为需要打开的笔记
            if name == filename {
                //打开笔记
                noteTextView.text = dict["content"]!
                break   //结束循环
            }
        }
    }
    
    
    @IBAction func didTapped(sender : AnyObject) {
        self.view.endEditing(true)
    }
    
    
}

