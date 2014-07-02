//
//  ViewController.swift
//  WorldCupTV
//
//  Created by WuQiong on 6/16/14.
//  Copyright (c) 2014 长沙戴维营教育. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var vlcPlayer: VLCMediaPlayer!
    
    @IBOutlet var videoView: UIView
                            
    override func viewDidLoad() {
        super.viewDidLoad()
        
        vlcPlayer = VLCMediaPlayer(options: nil)
        vlcPlayer.drawable = self.videoView
        
        vlcPlayer.stop()
        
        var url: NSURL = NSURL(string: "rtsp://stream2.gzcbn.tv:1935/app_2/ls_1.stream?domain=gztv")
        var media: VLCMedia = VLCMedia.mediaWithURL(url) as VLCMedia
        
        vlcPlayer.setMedia(media)
        vlcPlayer.play()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

