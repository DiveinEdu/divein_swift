//
//  ViewController.swift
//  NetworkApp
//
//  Created by WuQiong on 6/24/14.
//  Copyright (c) 2014 长沙戴维营教育. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBAction func didClicked(sender : AnyObject) {
        //创建一个URL对象
        var url = NSURL(string: "http://www.ubuntu.com/download/desktop/contribute/?version=14.04&architecture=amd64")
        //创建一个HTTP请求
        var request = NSURLRequest(URL: url)
        //发送同步请求，开始下载数据
        
        var response: NSURLResponse?
        var error: NSError?
        
        //        var mainQueue = NSOperationQueue.mainQueue()
        //
        //        //发起异步下载
        //        NSURLConnection.sendAsynchronousRequest(request, queue: mainQueue, completionHandler: {
        //            //异步下载结束后的处理方法
        //            (response: NSURLResponse!, data: NSData!, error: NSError!) in
        //            var httpResponse = response as NSHTTPURLResponse
        //            if httpResponse.statusCode == 200 {
        //                data.writeToFile("/Users/cheetah/Desktop/test.jpg", atomically: true)
        //            }
        //            else {
        //                println("下载失败!")
        //            }
        //        })
        //        println("异步请求发送结束！")
        var data = NSURLConnection.sendSynchronousRequest(request, returningResponse: &response, error: &error)
        println("\(response):\(error)")
        
        var httpResponse = response as NSHTTPURLResponse
        //数据下载完成
        if httpResponse.statusCode == 200 {
            println("下载了\(data.length)字节")
            data.writeToFile("/Users/cheetah/Desktop/test.jpg", atomically: true)
        }
        else {
            println("下载失败: \(httpResponse.statusCode)")
        }
    }
                            
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //HTTP/HTTPS
        //URL: http://pic.baike.soso.com/p/20120424/bki-20120424022918-1539307851.jpg
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

