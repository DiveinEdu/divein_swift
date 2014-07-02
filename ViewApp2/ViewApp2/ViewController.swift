//
//  ViewController.swift
//  ViewApp2
//
//  Created by WuQiong on 6/16/14.
//  Copyright (c) 2014 长沙戴维营教育. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var label : UILabel
    
    @IBAction func didClicked(sender : AnyObject) {
        println("did clicked: \(label.text)")
    }
                            
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

