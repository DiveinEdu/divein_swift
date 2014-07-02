//
//  ViewController.swift
//  NavApp1
//
//  Created by WuQiong on 6/19/14.
//  Copyright (c) 2014 长沙戴维营教育. All rights reserved.
//

import UIKit


//压栈（进栈）push
//出栈pop

class ViewController: UIViewController {
    var weight = 100
                            
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        var viewCtrl = SecondViewController()
//        viewCtrl.weight2 = weight
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //重载
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
        if segue.identifier == "first" {
            var destController: SecondViewController = segue.destinationViewController as SecondViewController
            destController.weight2 = weight
        }
    }
    
}

