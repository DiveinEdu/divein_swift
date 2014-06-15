// Playground - noun: a place where people can play

import Cocoa

class Person {
    var residence: Residence?
    
    class func printClassName() {
        println("Person")
    }
}

class Residence : LogicValue {
    var numberOfRooms = 1
    
    func getLogicValue() -> Bool {
        if numberOfRooms > 100 {
            return true
        }
        else {
            return false
        }
    }
}

let john = Person()
let roomCount = john.residence?.numberOfRooms

typealias Point = (Int, Int)
let origin: Point = (0, 0)

var opt: Int?
if opt {
    println("true")
}
else {
    println("false")
}

opt = 10
if opt {
    println("true")
}
else {
    println("false")
}

var aInt: Int = 0
aInt = opt!

let one = Residence()
one.numberOfRooms = 101
if one {
    println("numberOfRooms > 100")
}
else {
    println("numberOfRooms <= 100")
}

class Animal {
    class func printClassName() {
        println("Animal")
    }
}

class Dog : Animal {
    override class func printClassName() {
        println("Dog")
    }
}

let huihui: Animal = Dog()
huihui.dynamicType

var intStr: String = "10"
var intOpt: Int? = intStr.toInt()
var intValue: Int = intOpt!

