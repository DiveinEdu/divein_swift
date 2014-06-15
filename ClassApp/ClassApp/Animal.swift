//
//  Animal.swift
//  ClassApp
//
//  Created by WuQiong on 6/12/14.
//  Copyright (c) 2014 长沙戴维营教育. All rights reserved.
//

import UIKit
//继承
class Animal: NSObject {
    //属性
    var weight: Double = 0
    var age: Int = 0
    
    //initializer
    init(weight: Double, age: Int)  {
        super.init()
        
        self.weight = weight
        self.age = age
    }
    
    //method
    func eat(something: Double, something2: Double) -> Double {
        weight = weight + something - something2
        println("weight: \(weight)")
        
        return weight
    }
}
