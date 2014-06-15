//
//  ViewController.swift
//  SoccerTV5
//
//  Created by WuQiong on 6/15/14.
//  Copyright (c) 2014 长沙戴维营教育. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {
    var mediaPlayer: VLCMediaPlayer!
                            
    override func viewDidLoad() {
        super.viewDidLoad()

        mediaPlayer = VLCMediaPlayer(videoView: self.view as VLCVideoView)
        
        let url = NSURL(string: "rtsp://stream2.gzcbn.tv:1935/app_2/ls_1.stream?domain=gztv")
        let media = VLCMedia(URL: url)
        mediaPlayer.setMedia(media)
        mediaPlayer.play()
    }

    override var representedObject: AnyObject? {
        didSet {
        // Update the view, if already loaded.
        }
                                    
    }


}

