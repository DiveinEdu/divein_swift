// Playground - noun: a place where people can play

import Cocoa

//..表示一个左闭右开的区间[1 5)
//...表示一个闭区间[1 5]
for index in 1...5 {
    println("\(index) times is \(index * 5)")
}

let base = 3
let power = 10
var answer = 1

for _ in 1...power {
    answer *= base
}
println("\(base) to the power of \(power) is \(answer)")

//遍历数组
let names = ["Anna", "Jack", "Tom"]
for name in names {
    println("Hello, \(name)")
}

var sum: Double = 100
sum / Double(names.count)

//遍历字典
let numberOfLegs = ["spider":8, "ant":6, "cat":4]
for (animalName, _) in numberOfLegs {
    println("\(animalName)s have \(numberOfLegs[animalName])")
}

println(numberOfLegs["spider"])

//遍历字符串
for character in "Hello" {
    println(character)
}

var index: Int
for index = 0; index < 3; index++ {
    println("index is \(index)")
}
println("end index: \(index)")

func join(s1: String, s2: String, _ joiner: String = " ") -> String {
    return s1 + joiner + s2
}

join("hello", "world", "-")

enum CompassPoint {
    case North
    case South
    case East
    case West
}

println(CompassPoint.North)

