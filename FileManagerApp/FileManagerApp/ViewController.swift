//
//  ViewController.swift
//  FileManagerApp
//
//  Created by WuQiong on 6/25/14.
//  Copyright (c) 2014 长沙戴维营教育. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
                            
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //获取应用程序主目录
        var home = NSHomeDirectory()
        println("\(home)")
        
        //主包的位置，或者叫资源文件夹的位置
        var bundle = NSBundle.mainBundle().bundlePath
        println("\(bundle)")
        var resource = NSBundle.mainBundle().resourcePath
        println("\(resource)")
        var executable = NSBundle.mainBundle().executablePath
        println("\(executable)")
        
        //获取资源文件夹下的文件路径
        var info = NSBundle.mainBundle().pathForResource("Info", ofType: "plist")
        println("\(info)")
        
        //获取Documents目录的路径
        var document = NSHomeDirectory() + "/Documents"
        println("\(document)")
        
        //获取缓存文件目录
        var arr = NSSearchPathForDirectoriesInDomains(.CachesDirectory, .UserDomainMask, true)
        if arr {
            var cache: String = arr[0] as String
            println("\(cache)")
        }
        
        //获取临时文件目录
        var tmp = NSTemporaryDirectory()
        println("\(tmp)")
        
        //1. Documents目录一般用于永久存放文件
        //2. Caches/tmp用于临时存放文件(Library/Cache)
        //3. main bundle下为只读文件夹
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

