//
//  OnlineTableViewController.swift
//  DVIPlayer
//
//  Created by WuQiong on 6/26/14.
//  Copyright (c) 2014 长沙戴维营教育. All rights reserved.
//

import UIKit

class OnlineTableViewController: UITableViewController {
    var channelList: Array<Channel> = []
    var currentChannel: Channel!

    init(style: UITableViewStyle) {
        super.init(style: style)
        // Custom initialization
    }
    
    init(coder: NSCoder) {
        super.init(coder: coder)
        
    }
    
    func loadChannelList() {
        var url = NSURL(string: "https://gitcafe.com/wcrane/XXXYYY/raw/master/baidu.json")
        var request = NSMutableURLRequest(URL: url)
        
        //获取主队列
        var mainQueue = NSOperationQueue.mainQueue()
        //发送异步请求
        NSURLConnection.sendAsynchronousRequest(request, queue: mainQueue, completionHandler: {
            (response: NSURLResponse!, data: NSData!, error: NSError!) -> Void in
            var httpResponse = response as NSHTTPURLResponse

            if httpResponse.statusCode == 200 {
                //将NSData转换为字符串
//                var str = NSString(data: data, encoding: NSUTF8StringEncoding)
//                println("\(str)")
                
                //将json串转换为对象
                var array: NSArray = NSJSONSerialization.JSONObjectWithData(data, options: NSJSONReadingOptions.AllowFragments, error: nil) as NSArray
                
//                self.channelList = []
                for dict : AnyObject in array {
                    var channel = Channel(dict: dict as NSDictionary)
                    self.channelList.append(channel)
                }
                
                self.tableView.reloadData()
            }
            else {
                
            }
        })
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        //获取网络上的频道列表
        loadChannelList()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // #pragma mark - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView?) -> Int {
        // #warning Potentially incomplete method implementation.
        // Return the number of sections.
        return 1
    }

    override func tableView(tableView: UITableView?, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete method implementation.
        // Return the number of rows in the section.
        return self.channelList.count
    }

    override func tableView(tableView: UITableView?, cellForRowAtIndexPath indexPath: NSIndexPath?) -> UITableViewCell? {
        let cell: UITableViewCell = tableView!.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as UITableViewCell

        var channel: Channel = self.channelList[indexPath!.row]
        cell.textLabel.text = channel.title

        return cell
    }
    
    override func tableView(tableView: UITableView!, willSelectRowAtIndexPath indexPath: NSIndexPath!) -> NSIndexPath! {
        currentChannel = self.channelList[indexPath.row]
        
        return indexPath
    }

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue?, sender: AnyObject?) {
        var destViewController: OnlineViewController = segue!.destinationViewController as OnlineViewController
        destViewController.channel = currentChannel
    }
}
