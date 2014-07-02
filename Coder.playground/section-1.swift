// Playground - noun: a place where people can play

import Cocoa

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

var stu = Student()
stu.age = 20
stu.name = "Zhangsan"

NSKeyedArchiver.archiveRootObject(stu, toFile: "/Users/cheetah/Desktop/test.plist")
var stu2 : Student = NSKeyedUnarchiver.unarchiveObjectWithFile("/Users/cheetah/Desktop/test.plist") as Student
stu2.age
stu2.name


println("\(stu2)")
