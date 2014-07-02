//
//  AppDelegate.swift
//  CoderApp
//
//  Created by WuQiong on 6/26/14.
//  Copyright (c) 2014 长沙戴维营教育. All rights reserved.
//

import UIKit

class Student : NSObject, NSCoding {
    var age: CInt = 0
    var name: NSString = ""
    
    func encodeWithCoder(aCoder: NSCoder!) {
        aCoder.encodeInt(age, forKey: "age")
        aCoder.encodeObject(name, forKey: "name")
    }
    
    init(coder aDecoder: NSCoder!) {
        self.age = aDecoder.decodeIntForKey("age")
        self.name = aDecoder.decodeObjectForKey("name") as NSString
    }
    
    init() {
        
    }
}

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
                            
    var window: UIWindow?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: NSDictionary?) -> Bool {
        self.window = UIWindow(frame: UIScreen.mainScreen().bounds)
        // Override point for customization after application launch.
        self.window!.backgroundColor = UIColor.whiteColor()
        self.window!.makeKeyAndVisible()
        
        
        var stu = Student()
        stu.age = 20
        stu.name = "Zhangsan"
        
        NSKeyedArchiver.archiveRootObject(stu, toFile: "/Users/cheetah/Desktop/test.plist")
        var stu2 : Student = NSKeyedUnarchiver.unarchiveObjectWithFile("/Users/cheetah/Desktop/test.plist") as Student
        
        println("\(stu2)")
        
        return true
    }

    func applicationWillResignActive(application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

