//
//  ViewController.swift
//  SwiftApp_1
//
//  Created by WuQiong on 6/5/14.
//  Copyright (c) 2014 长沙戴维营教育. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
                            
    @IBOutlet var label : UILabel
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.label.text = "戴维营教育欢迎你！"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func didClicked(sender : UIButton) {
        var viewController:SecondViewController = SecondViewController(nibName: nil, bundle: nil)
        self.presentViewController(viewController, animated: true, completion: {
            println("end present")
        })
    }
}

