//
//  ViewController.swift
//  ChannelApp
//
//  Created by WuQiong on 6/16/14.
//  Copyright (c) 2014 长沙戴维营教育. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    var channels: Array< Dictionary<String, String> > = [
        ["name": "CCTV5", "url":"http://ims.veryhd.net"],
        ["name":"芒果台","url":"http://xxxxx"],
        ["name":"凤凰资讯", "url":"mms://xxxx"]
    ]
                            
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func tableView(tableView: UITableView!, numberOfRowsInSection section: Int) -> Int {
        return channels.count
    }
    
    func tableView(tableView: UITableView!, cellForRowAtIndexPath indexPath: NSIndexPath!) -> UITableViewCell! {
        
        var cell: UITableViewCell = tableView.dequeueReusableCellWithIdentifier("cell1" , forIndexPath: indexPath) as UITableViewCell
        
        var channel: Dictionary<String, String> = channels[indexPath.row]
        cell.textLabel.text = channel["name"]
        
        println("\(indexPath)")
        return cell
    }
    
    func tableView(tableView: UITableView!, didSelectRowAtIndexPath indexPath: NSIndexPath!) {
        var channel: Dictionary<String, String> = channels[indexPath.row]
        var name = channel["name"]
        var url = channel["url"]
        println("did select: \(name): \(url)")
    }
}

