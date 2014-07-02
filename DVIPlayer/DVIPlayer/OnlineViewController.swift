//
//  OnlineViewController.swift
//  DVIPlayer
//
//  Created by WuQiong on 6/26/14.
//  Copyright (c) 2014 长沙戴维营教育. All rights reserved.
//

import UIKit
import AVFoundation

class OnlineViewController: UIViewController, AVAudioPlayerDelegate {
    @IBOutlet var songImageView: UIImageView
    @IBOutlet var slider: UISlider
    @IBOutlet var artistLabel: UILabel
    @IBOutlet var songLabel: UILabel
    @IBOutlet var timeLabel: UILabel
    
    //进度调节
    @IBAction func valueChanged(sender: UISlider) {
        player.currentTime = NSTimeInterval(sender.value) * player.duration
    }
    
    //收藏
    @IBAction func didFavClicked(sender: AnyObject) {
        var song = self.currentSong
        
        var url = NSURL(string: song.songLink)
        var data = NSData.dataWithContentsOfURL(url, options: NSDataReadingOptions.DataReadingMappedIfSafe, error: nil)
        
        //sandbox
        //Documents/tmp/caches
        var path = NSHomeDirectory() + "/Documents/" + String(song.songName)
        println("\(path)")
        data.writeToFile(path, atomically: true)
    }
    
    func loadSongWithIndex(index: Int) {
        if index < self.songList.count && index >= 0 {
            self.currentSong = self.songList[index]
            self.currentIndex = index
            
            player.stop()
            self.loadSongInfo(self.currentSong.id)
        }
    }
    
    //上一曲
    @IBAction func preClicked(sender: AnyObject) {
        var index = self.currentIndex - 1
        loadSongWithIndex(index)
    }
    
    //下一曲
    @IBAction func nextClicked(sender: AnyObject) {
        var index = self.currentIndex + 1
        loadSongWithIndex(index)
    }
    
    //播放、暂停
    @IBAction func playClicked(sender: AnyObject) {
    }
    
    var channel: Channel!   //当前频道
    var songList: Array<Song> = []  //当前频道的歌曲列表
    var currentIndex: Int!
    var currentSong: Song!  //当前播放的歌曲
    var player: AVAudioPlayer!  //播放器对象
    var timer: NSTimer! //定时器
    
    //公共的下载数据的函数
    func downloadData(path: String, dataHandler: (NSData) -> Void) {
        var url = NSURL(string: path)
        var request = NSURLRequest(URL: url)
        var mainQueue = NSOperationQueue.mainQueue()    //主队列
        
        //异步下载
        NSURLConnection.sendAsynchronousRequest(request, queue: mainQueue, completionHandler: {
            (response: NSURLResponse!, data: NSData!, error: NSError!) -> Void in
            var httpResponse = response as NSHTTPURLResponse
            if httpResponse.statusCode == 200 {
                dataHandler(data)
            }
        })
    }
    
    //6. 显示歌曲信息
    func showSongInfo() {
        self.artistLabel.text = self.currentSong.artistName
        self.songLabel.text = self.currentSong.songName
    }
    
    //5. 播放歌曲
    func playSong(data: NSData) {
        player = AVAudioPlayer(data: data, error: nil)
        player.prepareToPlay()
        player.play()
        player.delegate = self
        
        timer = NSTimer.scheduledTimerWithTimeInterval(0.01, target: self, selector: "refreshSlider", userInfo: nil, repeats: true)
    }
    
    //更新进度
    func refreshSlider() {
        slider.value = CGFloat(player.currentTime / player.duration)
    }
    
    //一曲播放结束
    func audioPlayerDidFinishPlaying(player: AVAudioPlayer!, successfully flag: Bool) {
        timer.invalidate()
        
        var index = self.currentIndex + 1
        loadSongWithIndex(index)
    }
    
    //4. 下载歌曲
    func downloadSong(path: String) {
        downloadData(path, dataHandler:{
            (data: NSData) -> Void in
            //歌曲下载完成后自动播放
            self.playSong(data)
        })
    }
    
    //3. 根据歌曲id获取歌曲信息
    func loadSongInfo(id: Int) {
        var path = "http://music.baidu.com/data/music/fmlink?type=mp3&rate=1&format=json&songIds=\(id)"
        
        downloadData(path, dataHandler: {
            (data: NSData) -> Void in
            
            //将JSON数据转换为对象类型
            var dict: NSDictionary = NSJSONSerialization.JSONObjectWithData(data, options: NSJSONReadingOptions.AllowFragments, error: nil) as NSDictionary
            //查找需要的歌曲信息
            var dataDict: NSDictionary = dict["data"] as NSDictionary
            var list: NSArray = dataDict["songList"] as NSArray
            var songDict: NSDictionary = list[0] as NSDictionary
            //更新歌曲信息
            self.currentSong.refreshSong(songDict)
            
            self.showSongInfo()
            self.downloadSong(self.currentSong.songLink)
        })
    }
    
    //2. 下载歌曲列表
    func loadSongList() {
        var path = "http://fm.baidu.com/dev/api/?tn=playlist&special=flash&prepend=&format=json&_=1378945264366&id=" + String(channel.id)
        
        downloadData(path, dataHandler:{
            (data: NSData) -> Void in
            //将json串转换为对象
            var dict: NSDictionary = NSJSONSerialization.JSONObjectWithData(data, options: NSJSONReadingOptions.AllowFragments, error: nil) as NSDictionary
            
            var list: NSArray = dict["list"] as NSArray
            
            //NSString, NSNumber
            //将字典类型的歌曲信息转换为对象类型，方便后面使用
            for d : AnyObject in list {
                var song = Song()
                //获取数值类型的字段
                var num: NSNumber = d["id"] as NSNumber
                song.id = num.integerValue
                self.songList.append(song)
            }
            
            if self.songList.count != 0 {
                self.currentSong = self.songList[0]
                //自动下载第一首歌
                self.currentIndex = 0
                self.loadSongInfo(self.currentSong.id)
            }
        })
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        println("viewDidLoad......")

        //1. 自动加载当前频道的歌曲列表
        loadSongList()
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        println("viewWillAppear......")
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
        println("viewDidAppear........")
    }
    
    override func viewWillDisappear(animated: Bool) {
        super.viewWillDisappear(animated)
        
        println("viewWillDisappear........")
        
        timer.invalidate()
    }
    
    override func viewDidDisappear(animated: Bool) {
        super.viewDidDisappear(animated)
        
        println("viewDidDisappear........")
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
