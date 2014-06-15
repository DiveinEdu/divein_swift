//
//  Dog.swift
//  ClassApp
//
//  Created by WuQiong on 6/12/14.
//  Copyright (c) 2014 长沙戴维营教育. All rights reserved.
//

import UIKit

class Dog: Animal {
    init() {
        super.init(weight: 10, age: 1)
    }
    
    //类方法
    class func printx() {
        println("Dog printx")
    }
    
    class func printy() {
        println("Dog printy")
        
        printx()
    }
    
    //实例方法
    func run(speed: Double) {
        println("run with speed: \(speed)")
        
        eat(40, something2: 53)
    }
}
