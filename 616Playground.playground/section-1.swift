// Playground - noun: a place where people can play

import Cocoa

//数组
var arr: Array<Int> = Array<Int>()
var arr2 = [1, 2, 4, 20]
arr = arr2
arr[2]

//字典
//key-value
var dict: Dictionary<String, String> = ["name":"Zhangsan", "age":"24"]
println(dict["age"])
dict["name"] = "Lisi"

//循环
for var i = 0; i < arr.count; i++ {
    println("\(i) : \(arr[i])")
}

//快速枚举
var i = 0
for item in arr {
    println("\(i) : \(item)")
    i++
}

i = 0
while i < arr.count {
    println("while: \(arr[i])")
    i++
}

i = 0
do {
    println("do-while: \(arr[i])")
    i++
} while i < arr.count

do {
    var i = 10
    println("test")
} while false

//switch
var day = 1
switch day {
    case 1..30:
        println("这是一个正常的日子")
        fallthrough
    default:
        println("不正常")
}

//if
if (day >= 1) && (day <= 30) {
    println("if: 这是一个正常的日子")
}
else {
    println("if: 不正常")
}

//UIView
//UIButton
//类
class Animal {
    var color: String = "black"
    var weight: Double = 1.0
    
    func eat(food: Double) -> Double {
        weight += food
        
        return weight
    }
    
    class func printDog() {
        println("printDog")
    }
}

class Dog : Animal {
    
}

//对象（实例）
var dog: Dog = Dog()
dog.eat(20)
dog.color = "red"
println("color: \(dog.color)")

var greenDog = Dog()
greenDog.color = "green"
println("color: \(greenDog.color)")

Dog.printDog()
Animal.printDog()

//枚举
//associate value
//raw value
enum Week : Int {
    case Mon
}
Week.Mon.toRaw()
Week.fromRaw(1)

//UIImageView/UIImage
