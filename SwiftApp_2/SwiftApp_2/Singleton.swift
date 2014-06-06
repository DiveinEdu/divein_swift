//
//  Singleton.swift
//  SwiftApp_2
//
//  Created by WuQiong on 6/6/14.
//  Copyright (c) 2014 长沙戴维营教育. All rights reserved.
//

import UIKit

class Singleton: NSObject {
    class var sharedInstance: Singleton {
        get {
            struct Static {
                static var singleton: Singleton? = nil
                static var token: dispatch_once_t = 0
            }
            
            println("xxxx")
            
            dispatch_once(&Static.token) {
                Static.singleton = Singleton.allocWithZone(nil)
            }
            
            return Static.singleton!
        }
    }
}
