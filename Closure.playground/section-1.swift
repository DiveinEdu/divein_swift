// Playground - noun: a place where people can play

import Cocoa

//创建一个可以接受一个整型参数，并且返回值类型为整型的闭包
var closure1 = {
    (a: Int) -> Int in
    return 10
}

var result = closure1(29)
println("\(result)")

func function1(a: Int) -> Int {
    return 10
}

var result2 = function1(29)
println("\(result2)")

func function2(cls: (Int) -> Int) {
    var result = cls(20)
    println("\(result)")
}

//将闭包作为函数参数
function2(closure1)
function2({
    (a: Int) -> Int in
    println("这是一个闭包")
    return 0
})

//可以将最后一个闭包类型的参数直接跟随在函数调用后
function2(){
    (a: Int) -> Int in
    println("这是一个闭包2")
    return 0
}

//将闭包作为函数的参数
function2{
    (a: Int) -> Int in
    println("这是一个闭包3")
    return 0
}

//位置参数
function2{
    println("-----\($0)")
    
    return 0
}

func function3(cls: (Int, Int) -> Int) {
    cls(1, 2)
}

function3{
    println("\($0): \($1)")
    
    return 0
}

var arr = [2, 6, 5, 1]
var sortedArr = sort(arr, { (a1: Int, a2: Int) in
        return a1 < a2
    })
//只有一个语句的话，返回值就是它的计算结果
sortedArr = sort(arr, { $0 < $1 })
sortedArr

//筛选
var fArr = filter(arr, { $0 > 5 })
var rArr = Array(fArr)

//映射
var mapArr = map(arr, { $0 + 10 })
rArr = Array(mapArr)

//化简，reduce











