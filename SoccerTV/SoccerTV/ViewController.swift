//
//  ViewController.swift
//  SoccerTV
//
//  Created by WuQiong on 6/15/14.
//  Copyright (c) 2014 长沙戴维营教育. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var vlcPlayer: VLCMediaPlayer!
                            
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        vlcPlayer = VLCMediaPlayer(options: nil)
        vlcPlayer.drawable = self.view
        
        //http://223.82.250.66:8080/ysten-businessmobile/live/cctv-5/dujuejiami.m3u8
        let url = NSURL(string: "rtsp://stream2.gzcbn.tv:1935/app_2/ls_1.stream?domain=gztv")
        let media : VLCMedia = VLCMedia.mediaWithURL(url) as VLCMedia
        vlcPlayer.setMedia(media)
        vlcPlayer.play()
        

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    override func viewDidDisappear(animated: Bool) {
        super.viewDidDisappear(animated)
        
        vlcPlayer.stop()
    }
}

