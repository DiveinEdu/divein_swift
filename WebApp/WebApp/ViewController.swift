//
//  ViewController.swift
//  WebApp
//
//  Created by WuQiong on 6/19/14.
//  Copyright (c) 2014 长沙戴维营教育. All rights reserved.
//

import UIKit

extension String {
    func charAtIndex(i: Int) -> Character {
        var index = advance(self.startIndex, i)
        
        return self[index]
    }
}

class ViewController: UIViewController, UIWebViewDelegate {
    @IBOutlet var webView : UIWebView
    @IBOutlet var textField : UITextField
    @IBOutlet var activityIndicator : UIActivityIndicatorView
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var str: String = "abc"
        
        var c = str[str.startIndex]
        //将索引往前移动2个位置，startIndex表示第0个位置，endIndex表示c后面的位置。
        var index = advance(str.endIndex, -2)
        
        println("\(str.charAtIndex(1))")
        
        var url: NSURL = NSURL(string: "http://www.baidu.com")
        var request: NSURLRequest = NSURLRequest(URL: url)
        self.webView.loadRequest(request)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func didGoClicked(sender : AnyObject) {
        var str: NSString = textField.text
        if !str.hasPrefix("http://") {
            str = "http://" + str
        }
        
        println("\(str)")
        var url: NSURL = NSURL(string: str)
        var request: NSURLRequest = NSURLRequest(URL: url)
        self.webView.loadRequest(request)
        
        activityIndicator.startAnimating()
        self.view.endEditing(true)
    }
    
    func webView(webView: UIWebView!, shouldStartLoadWithRequest request: NSURLRequest!, navigationType: UIWebViewNavigationType) -> Bool {
        println("should start.....\(request)")
        return true
    }
    
    func webViewDidStartLoad(webView: UIWebView!) {
        println("did start...")
    }
    
    func webViewDidFinishLoad(webView: UIWebView!) {
        println("did finish")
        
        activityIndicator.stopAnimating()
    }
    
    func webView(webView: UIWebView!, didFailLoadWithError error: NSError!) {
        println("did fail")
        
        activityIndicator.stopAnimating()
    }
}

