//
//  Song.swift
//  DVIPlayer
//
//  Created by WuQiong on 6/26/14.
//  Copyright (c) 2014 长沙戴维营教育. All rights reserved.
//

import UIKit

class Song: NSObject, NSCoding {
    var id: Int!
    var songName: NSString!
    var artistName: NSString!
    var albumName: NSString!
    var songPicSmall: NSString!
    var songPicBig: NSString!
    var songPicRadio: NSString!
    var lrcLink: NSString!
    var songLink: NSString!
    var showLink: NSString!
    
    init() {
        
    }
    
    func encodeWithCoder(aCoder: NSCoder!) {
        aCoder.encodeInteger(self.id, forKey: "id")
        aCoder.encodeObject(self.songName, forKey: "songName")
        //....
    }
    
    init(coder aDecoder: NSCoder!) {
        self.id = aDecoder.decodeIntegerForKey("id")
        self.songName = aDecoder.decodeObjectForKey("songName") as NSString
        //...
    }
    
    func refreshSong(dict: NSDictionary) {
        self.songName = dict["songName"] as NSString
        self.artistName = dict["artistName"] as NSString
        self.albumName = dict["albumName"] as NSString
        self.songPicSmall = dict["songPicSmall"] as NSString
        self.songPicBig = dict["songPicBig"] as NSString
        self.lrcLink = dict["lrcLink"] as NSString
        self.songLink = dict["songLink"] as NSString
        self.showLink = dict["showLink"] as NSString
    }
}
