//
//  ViewController.swift
//  TreeGraph
//
//  Created by WuQiong on 6/18/14.
//  Copyright (c) 2014 长沙戴维营教育. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var treeView: UIView!
    var cycle: Int = 0
                            
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var rect = self.view.frame
        treeView = UIView(frame: CGRect(x: 0, y: rect.size.height - 10, width: 10, height: 10))
        treeView.backgroundColor = UIColor.greenColor()
        self.view.addSubview(treeView)
        
        var button: UIButton = UIButton.buttonWithType(UIButtonType.System) as UIButton
        button.frame = CGRectMake(100, 100, 40, 40)
        button.setTitle("生长", forState: UIControlState.Normal)
        button.addTarget(self, action: "didClicked", forControlEvents: UIControlEvents.TouchUpInside)
        self.view.addSubview(button)
    }
    
    func grow(c: Int) -> Int {
        var height = 1
        
        for var i = 1; i <= c; i++ {
            if i % 2 == 0 {
                height += 1
            }
            else {
                height *= 2
            }
        }
        
        return height
    }
    
    func didClicked() {
        cycle++
        
        var height = CGFloat(grow(cycle) * 10)
        
        var rect = self.view.frame
        var frame = CGRectMake(0, rect.size.height - height, 10, height)
        
        UIView.animateWithDuration(3, animations: {
            self.treeView.frame = frame
        })
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

