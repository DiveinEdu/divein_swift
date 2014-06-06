//
//  SecondViewController.swift
//  SwiftApp_1
//
//  Created by WuQiong on 6/5/14.
//  Copyright (c) 2014 长沙戴维营教育. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        // Custom initialization
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.whiteColor()

        var button:UIButton = UIButton.buttonWithType(UIButtonType.System) as UIButton
        button.frame = CGRectMake(0, 50, 50, 50)
        button.setTitle("Back", forState: UIControlState.Normal)
        button.addTarget(self, action: "didClicked", forControlEvents: UIControlEvents.TouchUpInside)
        self.view.addSubview(button)
    }
    
    func didClicked() {
        println("Hello")
        
        self.dismissViewControllerAnimated(true, completion: {
            println("dismiss end")
        })
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // #pragma mark - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue?, sender: AnyObject?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

}
