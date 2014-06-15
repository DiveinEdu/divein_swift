// Playground - noun: a place where people can play

import Cocoa

//var optInt: Int? //Optional<Int>
var optInt: Optional<Int>
optInt = 32

let intValue: Int = 10
var sum: Int = optInt! + intValue
println("\(sum)")

//var optStr: String!
var optStr: ImplicitlyUnwrappedOptional<String>
//optStr = "Hello, "
var name: String = "Zhangsan"
//var result = optStr + name
//println("\(result)")
if optStr {
    
}

var optValue: Double?   //false/true
if optValue {
    println("true")
}
else {
    println("false")
}

optValue = 10
if optValue {
    println("true, has value")
}
else {
    println("false, has no value")
}

var str: String = "100a"
var op = str.toInt()
var value: Int
if op {
    value = op!
    println("数字： \(value)")
}
else {
    println("不是一个数字!")
}

var array = NSMutableArray()
array.addObject(1)
array.addObject(2)
array.addObject(3)

for item : AnyObject in array {
    println("\(item)")
}




















