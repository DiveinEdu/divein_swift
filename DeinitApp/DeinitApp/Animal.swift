//
//  Animal.swift
//  DeinitApp
//
//  Created by WuQiong on 6/18/14.
//  Copyright (c) 2014 长沙戴维营教育. All rights reserved.
//

import Foundation

class Animal {
    var weight = 0.0
    
//    初始化方法，构造函数
    init(w: Double) {
        self.weight = w
    }
    
    //析构函数
    deinit {
        println("in deinit: \(weight)")
    }
}