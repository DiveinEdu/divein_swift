//
//  ViewController.swift
//  ClosureApp
//
//  Created by WuQiong on 6/17/14.
//  Copyright (c) 2014 长沙戴维营教育. All rights reserved.
//
/*
有一棵树，每年有两个生长周期，其中季风来的时候高度变为原来的2倍，而夏天的时候高度增加1米。如果在季风来的时候种下一棵1米高的小树，请问在经过N个生长周期后，它的高度是多少？
*/

import UIKit

class ViewController: UIViewController {
    @IBOutlet var redView : UIView
                            
    @IBAction func didRightClicked(sender : AnyObject) {
        var frame = redView.frame
        var destFrame = CGRect(x: frame.origin.x + 200, y: frame.origin.y, width: frame.size.width, height: frame.size.height)
//        redView.frame = destFrame
        
        UIView.animateWithDuration(10, animations: {
            self.redView.frame = destFrame
            self.redView.backgroundColor = UIColor.blueColor()
            })
    }
    
    @IBAction func didLeftClicked(sender : AnyObject) {
        var frame = redView.frame
        var destFrame = CGRect(x: frame.origin.x - 200, y: frame.origin.y, width: frame.size.width, height: frame.size.height)
        
        UIView.animateWithDuration(10, animations: {
            self.redView.frame = destFrame
            }, completion: {
                (finished: Bool) -> Void in
                if finished {
                    println("Animation finished")
                }
            })
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

