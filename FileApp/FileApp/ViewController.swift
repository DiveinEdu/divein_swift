//
//  ViewController.swift
//  FileApp
//
//  Created by WuQiong on 6/25/14.
//  Copyright (c) 2014 长沙戴维营教育. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    var player: AVAudioPlayer!
                            
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var home = NSHomeDirectory()
        println("\(home)")
        
        var resource = NSBundle.mainBundle().resourcePath
        println("\(resource)")
        
        var mp3Path = NSBundle.mainBundle().pathForResource("1", ofType: "mp3")
        println("\(mp3Path)")
        
        var test = NSHomeDirectory() + "/Documents/test.txt"
        var mp3: NSString = mp3Path
        mp3.writeToFile(test, atomically: true)
        
        var content = NSString(contentsOfFile: test)
        println("------>\(content)")
        
//        var url = NSURL(fileURLWithPath: mp3Path)
//        player = AVAudioPlayer(contentsOfURL: url, error: nil)
//        player.prepareToPlay()
//        player.play()
        
        var path = NSHomeDirectory() + "/Documents/c/b"
        var manager = NSFileManager.defaultManager()
        //创建文件夹
        manager.createDirectoryAtPath(path, withIntermediateDirectories: true, attributes: nil, error: nil)
        
        var doc = NSHomeDirectory() + "/Documents"
        var subpath = manager.subpathsOfDirectoryAtPath(doc, error: nil)
        println("\(subpath)")
        
        var contents = manager.contentsOfDirectoryAtPath(doc, error: nil)
        println("\(contents)")
        
        var p = doc + "/test.txt"
        var exist = manager.fileExistsAtPath(p)
        println("\(p)")
        if exist {
            println("aaa.txt存在！")
        }
        else {
            println("aaa.txt不存在！！！")
        }
        
        var attr = manager.attributesOfItemAtPath(p, error: nil)
        println("\(attr.fileSize())")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

