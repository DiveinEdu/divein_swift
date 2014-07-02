//
//  ViewController.swift
//  DeinitApp
//
//  Created by WuQiong on 6/18/14.
//  Copyright (c) 2014 长沙戴维营教育. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var ani4: Animal!
                            
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var ani3: Animal
        
        if true {
            //ani1引用一个Animal的对象
            var ani1: Animal = Animal(w: 200)
            //ani2引用ani1所引用的对象
            var ani2 = ani1
            
            ani3 = ani1
            
            ani4 = ani3
        }
        
        println("xxxxx")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func didClicked(sender : AnyObject) {
//        ani4 = Animal(w: 40)
        
        var dog = YellowDog(w: 20)
    }
}

