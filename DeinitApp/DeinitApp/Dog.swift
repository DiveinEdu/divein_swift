//
//  Dog.swift
//  DeinitApp
//
//  Created by WuQiong on 6/18/14.
//  Copyright (c) 2014 长沙戴维营教育. All rights reserved.
//

import Foundation

class Dog : Animal {
    //先调用子类的析构函数，然后自动调用父类的析构函数
    deinit {
        println("Dog deinit")
    }
}