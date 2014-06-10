// Playground - noun: a place where people can play

import Cocoa

//顺序执行

//强类型的语言，类型推导(infer)
//常量
let a: Int = 1  //Int
//a = 30

//变量(variable)
var b: Double = 20.0    //Double
b = 30

//(double)a
var sum: Double = Double(a) + b //Double

//分支判断
if Double(a) < b {
    println("a < b")
}
else if a == b {
    println("a == b")
}
else {
    println("a > b")
}

//Swift中的switch，必须要覆盖a的所有取值情况，如果做不到，请添加default语句
//switch可以判断任意数据类型
switch b {
    case 1..200:    //[1, 200)
        println("a is 1")   //不需要加break
    case 2:
        println("a is 2")
    default:
        break
}

//循环
for var index = 0; index < 10; ++index {
    println("for: \(index)")
}

for index in 0..10 {
    println("for-in: \(index)")
}

var result = 0
var index: Int
for index = 0; index < 10; index++ {
//    result = result + index
    result += index
}
println("index = \(index)")

//var index = 0
index = 0
result = 0
while index < 10 {
    result += index
    index++ //index = index + 1
}
println("while result: \(result)")

index = 0
result = 0
do {
    result += index
    index++
} while index < 10
println("do-while: \(result)")

println("end...")

