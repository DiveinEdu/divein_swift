//
//  ViewController.swift
//  ExtensionApp
//
//  Created by WuQiong on 6/17/14.
//  Copyright (c) 2014 长沙戴维营教育. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
                            
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var ani1 = Animal()
        ani1.eat()
        ani1.run()
        ani1.hunt()
        
        var str = "张三"
        str.printx()
        
        let a: Bool = true
        let b: Bool = false
        let result = (a && !b) || (!a && b)
        
        if a || b {
            println("true")
        }
        else {
            println("false")
        }
        
        println("\(2.4%1)") //求余
        
        var i = 1
        var i2 = i++    //先取值1， 然后加1
        var i3 = ++i    //先加1，然后取值
        println("\(i2): \(i3)")
        
        //>, <, ==, !=, ===(恒等)
        if i < i3 {
            println("true")
        }
        
        //swift中的赋值运算没有返回值
        i = 200
        i += 2 //i = i + 2
        i -= 3 //i = i - 3
        i *= 3 //i = i * 3
        i /= 4 //i = i / 4
        i %= 5 //i = i % 5
        
        var i4 = 10     //十进制
        var o1 = 0o10   //八进制
        var x1 = 0x10   //十六进制
        var b1 = 0b10  //二进制, 0000 0010, 1111 1101
        //原码， 补码， 反码
        //原码，-1 = 1000 0001, 1 = 0000 0001
        //补码，1 = 0000 0001, -1 = 1111 1110+1 = 1111 1111
        //-3, 1000 0011, 1111 1101
        //45, 32+8+4+1, 0b101 101, 0o55, 0x2d
        //0x12345
        //0b00 010 010 001 101 000 101
        //0o221505
        println("\(i4), \(o1), \(x1), \(b1)")
        
        var b2 = 0b01
        //0 | 0 = 0, 1 | 0 = 1, 0 | 1 = 1, 1 | 1 = 1
        var b3 = b1 | b2    //0b11
        println("\(b3)")
        
        //0 & 0 = 0, 1 & 0 = 0, 0 & 1 = 0, 1 & 1 = 1
        var b4 = b1 & b2    //0b0
        println("b4: \(b4)")
        
        //1 ^ 0 = 1, 0 ^ 1 = 1, 0 ^ 0 = 0, 1 ^ 1 = 0
        var b5 = b1 ^ b2    //0b11
        println("\(b5)")
        
        //~1 = 0, ~0 = 1
        var b6 = ~b1    //-3, 计算机内部补码表示
        println("\(b6)")
        
        //b1 = 0b0000 0010
        var b7 = b1 << 3    //0b0001 0000, b1 * 2 * 2 * 2
        var b8 = b1 >> 1    //0b0000 0001, b1 / 8
        println("\(b7)")
        
        for i in 0...10 {
            println("\(i)")
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

