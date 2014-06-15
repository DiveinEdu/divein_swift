//
//  ViewController.swift
//  ViewApp
//
//  Created by WuQiong on 6/12/14.
//  Copyright (c) 2014 长沙戴维营教育. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var redView : UIView
                            
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redView.frame = CGRect(x: 0, y: 0, width: 150, height: 50)
//        redView.frame = CGRectMake(0, 0, 10, 150)
        
        var f = CGRect(x: 100, y: 100, width: 100, height: 100)
        //创建视图并指定位置和大小
        var greenView = UIView(frame: f)
        //设置视图的背景色为绿色
        greenView.backgroundColor = UIColor.greenColor()
        println("\(greenView)")
        
        //显示绿色视图
        self.view.addSubview(greenView)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

