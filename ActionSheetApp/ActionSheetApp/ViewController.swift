//
//  ViewController.swift
//  ActionSheetApp
//
//  Created by WuQiong on 6/24/14.
//  Copyright (c) 2014 长沙戴维营教育. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIActionSheetDelegate {
    @IBAction func didClicked(sender : AnyObject) {
//        var actionSheet = UIActionSheet()
//        actionSheet.title = "标题"
//        actionSheet.delegate = self
//        actionSheet.addButtonWithTitle("按钮1")
//        actionSheet.addButtonWithTitle("按钮2")
//        actionSheet.addButtonWithTitle("按钮3")
//        actionSheet.addButtonWithTitle("按钮4")
//        actionSheet.destructiveButtonIndex = 1
//        actionSheet.showInView(self.view)

        //创建一个Alert Controller
        var alertController = UIAlertController(title: "标题", message: "消息", preferredStyle: .ActionSheet)
        
        var action = {
            (action: UIAlertAction!) -> Void in
            println("这是按钮1: \(action)")
        }
        
        //创建按钮的动作
        var action1 = UIAlertAction(title: "按钮1", style: .Default, handler: action)
        println("\(action1)")
        //将动作添加到控制器
        alertController.addAction(action1)
        
        var action2 = UIAlertAction(title: "按钮2", style: .Default, handler: action)
        alertController.addAction(action2)
        
        //显示模态视图
        self.presentViewController(alertController, animated: true, completion: {
            println("显示完成")
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

    func actionSheet(actionSheet: UIActionSheet!, clickedButtonAtIndex buttonIndex: Int) {
        println("\(buttonIndex)")
    }
}

