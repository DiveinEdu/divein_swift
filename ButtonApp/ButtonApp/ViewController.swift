//
//  ViewController.swift
//  ButtonApp
//
//  Created by WuQiong on 6/13/14.
//  Copyright (c) 2014 xxx. All rights reserved.
//

import UIKit

class Teacher {
    var name: String = ""
}

struct Student {
    var name: String = ""
    var age: Int = 0
    var gender: String = "男"
    
    static var type: String = "人"
    
//    init(n: String, a: Int, g: String) {
//        self.name = n
//        self.age = a
//        self.gender = g
//    }
}

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        var rect = CGRect(x: 0, y: 0, width: 100, height: 100)
        var stu1 = Student(name: "Zhangsan", age: 20, gender: "女")
        println("\(stu1.name): \(stu1.gender): \(Student.type)")
        
        var stu2 = Student(name: "Lisi", age: 30, gender: "男")
        println("\(stu2.name): \(stu2.gender): \(Student.type)")
        
        Student.type = "不男不女"
        println("\(Student.type)")
        
        stu1.name = "zhaoliu"
        println("\(stu1.name): \(stu2.name)")
        
        var stu3 = stu1 //copy（复制）
        stu3.name = "赵六"
        println("\(stu3.name): \(stu1.name)")
        
        var t1 = Teacher()
        t1.name = "老师1"
        
        var t2 = t1 //refer（引用）
        t2.name = "老师2"
        println("\(t1.name): \(t2.name)")
        
        //创建一个System类型的按钮
        var button: UIButton = UIButton.buttonWithType(UIButtonType.System) as UIButton
        //设置按钮大小和位置
        button.frame = CGRect(x: 100, y: 100, width: 100, height: 50)
        //设置标题
        button.setTitle("按钮", forState: UIControlState.Normal)
        button.setTitle("高亮", forState: UIControlState.Highlighted)
        //添加动作
        button.addTarget(self, action: "didClicked:", forControlEvents: UIControlEvents.TouchUpInside)
        //显示按钮
        self.view.addSubview(button)
    }
    
    func didClicked(sender: UIButton) {
        println("button clicked")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

