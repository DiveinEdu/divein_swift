//
//  ViewController.swift
//  DownloadApp
//
//  Created by WuQiong on 6/24/14.
//  Copyright (c) 2014 长沙戴维营教育. All rights reserved.
//

import UIKit

class ViewController: UIViewController, NSURLConnectionDataDelegate {
    var mData: NSMutableData!
    var length: CLongLong = 0
                            
    @IBOutlet var progressView : UIProgressView
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var url = NSURL(string: "http://free2.macx.cn:81/tools/other2/Reeder204.dmg")
        var request = NSURLRequest(URL: url)
        var connection = NSURLConnection(request: request, delegate: self)
        connection.start()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func connection(connection: NSURLConnection!, didFailWithError error: NSError!) {
        println("connection failed: \(error)")
    }
    
    //1. 服务器作出响应
    func connection(connection: NSURLConnection!, didReceiveResponse response: NSURLResponse!) {
        var httpResponse = response as NSHTTPURLResponse
        
        println("length: \(httpResponse.expectedContentLength)")
        length = httpResponse.expectedContentLength
        
        println("filename: \(httpResponse.suggestedFilename)")
        if httpResponse.statusCode == 200 {
            println("\(httpResponse)")
            
            mData = NSMutableData()
        }
        else {
            println("失败")
        }
    }
    
    //2. 重复调用，返回数据包，每次返回一部分数据
    func connection(connection: NSURLConnection!, didReceiveData data: NSData!) {
        
        mData.appendData(data)
        
        var progress = Double(mData.length) / Double(length)
        println("receive data: \(progress * 100)%")
        
        progressView.progress = CGFloat(progress)
    }
    
    //3. 下载结束
    func connectionDidFinishLoading(connection: NSURLConnection!) {
        mData.writeToFile("/Users/cheetah/Desktop/Reeder204.dmg", atomically: true)
        println("下载完成")
    }
}

