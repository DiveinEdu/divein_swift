//
//  OfflineViewController.swift
//  DVIPlayer
//
//  Created by WuQiong on 6/26/14.
//  Copyright (c) 2014 长沙戴维营教育. All rights reserved.
//

import UIKit
import AVFoundation

class OfflineViewController: UIViewController {
    var songName: String!
    var player: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()

        println("----> \(songName)")
        var path = NSHomeDirectory() + "/Documents/" + songName
        var url = NSURL(fileURLWithPath: path)
        player = AVAudioPlayer(contentsOfURL: url, error: nil)
        player.prepareToPlay()
        player.play()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // #pragma mark - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue?, sender: AnyObject?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

}
