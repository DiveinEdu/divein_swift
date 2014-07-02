//
//  OfflineTableViewController.swift
//  DVIPlayer
//
//  Created by WuQiong on 6/26/14.
//  Copyright (c) 2014 长沙戴维营教育. All rights reserved.
//

import UIKit

class OfflineTableViewController: UITableViewController {
    var fileArr: Array<String> = []
    var songTitle: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        var path = NSHomeDirectory() + "/Documents/"
        
        var error: NSError?
        var arr = NSFileManager.defaultManager().contentsOfDirectoryAtPath(path, error: &error)
        println("\(arr)")
        
        for item : AnyObject in arr {
            if item as String == ".DS_Store" {
                continue
            }
            
            self.fileArr.append(item as String)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // #pragma mark - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView?) -> Int {
        
        return 1
    }

    override func tableView(tableView: UITableView?, numberOfRowsInSection section: Int) -> Int {
        
        return self.fileArr.count
    }

    override func tableView(tableView: UITableView?, cellForRowAtIndexPath indexPath: NSIndexPath?) -> UITableViewCell? {
        let cell: UITableViewCell = tableView!.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as UITableViewCell

        var title = self.fileArr[indexPath!.row]
        cell.textLabel.text = title
        
        return cell
    }

    //section/row
    override func tableView(tableView: UITableView!, willSelectRowAtIndexPath indexPath: NSIndexPath!) -> NSIndexPath! {
        var title = self.fileArr[indexPath.row]
        println("\(title)")
        
        self.songTitle = title
        
        return indexPath
    }
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue?, sender: AnyObject?) {
        var offlineCtrl: OfflineViewController = segue!.destinationViewController as OfflineViewController
        offlineCtrl.songName = self.songTitle
    }

}
