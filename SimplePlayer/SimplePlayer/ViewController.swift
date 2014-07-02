//
//  ViewController.swift
//  SimplePlayer
//
//  Created by WuQiong on 6/25/14.
//  Copyright (c) 2014 长沙戴维营教育. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController, AVAudioPlayerDelegate {
    @IBOutlet var pSlider: UISlider
    var timer: NSTimer!
    
    var mp3file = "/Users/cheetah/Desktop/music/1.mp3"
    var player: AVAudioPlayer!
    
    @IBAction func didProgressChanged(sender: UISlider) {
        println("\(sender.value)")
        
        player.currentTime = player.duration * NSTimeInterval(sender.value)
    }
    
    func playMusic(path: String) {
        //创建文件的URL
        var url = NSURL(fileURLWithPath: path)
        var error: NSError?
        //创建播放器对象
        player = AVAudioPlayer(contentsOfURL: url, error: &error)
        player.delegate = self
        if error {
            println("出错了")
        }
        else {
            //准备播放
            player.prepareToPlay()
            //播放
            player.play()
            
            //创建并启动定时器，每隔0.1s调用一次refreshProgress
            timer = NSTimer.scheduledTimerWithTimeInterval(0.1, target: self, selector: "refreshProgress", userInfo: nil, repeats: true)
        }

    }
    
    @IBAction func didPlayClicked(sender: UIButton) {
        println("did play clicked")
        
        playMusic(mp3file)
    }
    
    func refreshProgress() {
        //改变进度
        pSlider.value = CFloat(player.currentTime / player.duration)
    }
    
    @IBAction func didStopClicked(sender: UIButton) {
        println("did stop clicked")
        
        //停止定时器
        timer.invalidate()
        
        //停止播放
        player.stop()
        
        pSlider.value = 0
    }
    
    @IBAction func didVolumeChanged(sender: UISlider) {
        println("\(sender.value)")
        
        player.volume = sender.value
    }
                            
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func audioPlayerDidFinishPlaying(player: AVAudioPlayer!, successfully flag: Bool) {
        println("did finish")
        
        timer.invalidate()
        playMusic("/Users/cheetah/Desktop/music/2.mp3")
    }
}

