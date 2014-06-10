//
//  ViewController.swift
//  ScoreApp
//
//  Created by WuQiong on 6/10/14.
//  Copyright (c) 2014 长沙戴维营教育. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var scoreTextField : UITextField
    @IBOutlet var imageView : UIImageView
                            
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func didClicked(sender : AnyObject) {
        var score = scoreTextField.text.toInt() //Optional
        switch score! {
            case 0..60:
                imageView.image = UIImage(named: "Delete")
                break
            case 60..80:
                imageView.image = UIImage(named: "right")
                break
            case 80...100:
                imageView.image = UIImage(named: "keditbookmarks")
                break
            default:
                println("wrong score!")
        }
    }
}

