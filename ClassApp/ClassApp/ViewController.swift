//
//  ViewController.swift
//  ClassApp
//
//  Created by WuQiong on 6/12/14.
//  Copyright (c) 2014 长沙戴维营教育. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
                            
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //对象/实例 (object/instance)
        var ani1: Animal = Animal(weight: 10, age: 1)
        ani1.eat(100.0, something2: 30)
        
        println("\(ani1.weight)")
        
        var ani2: Animal = Animal(weight: 20, age: 30)
        
        var weight = ani2.eat(24.0, something2: 40)
        println("\(weight)")
        
        var yellowDog = Dog()
        yellowDog.weight = 20
        println("yellow dog's weight: \(yellowDog.weight)")
//        yellowDog.climbTree()
        yellowDog.eat(345, something2: 678)
        
        var monkey = Monkey(weight:999, age: 99)
        monkey.eat(987, something2: 123)
        monkey.climbTree()
        
        //实例属性、实例方法
//        Dog.weight = 1000
        
        yellowDog.run(200)
        Dog.printx()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

