// Playground - noun: a place where people can play

import UIKit

//Swift自动推导数据类型,Bool
var age = 300
//true, false
//赋值表达式没有返回值

if age == 200 {
    println("不是人");println("啊")
}
else {
    println("人")
}

var day = 10
//必须覆盖所有可能性
switch day {
    case 10:    //每个case至少有一个语句
        println("上班")
        fallthrough //继续执行下一个case
    case 15:
        println("玩")
        fallthrough
    default:
//        break
        println("打酱油")
}

//let count = 3_0000  //可以用下划线分隔整数，方便查看
//for var index = 0; index < count; index++ {
//    println("index: \(index)")
//}

for index in 1...3 {
    println("index: \(index)")
}

var count = 70
switch count {
    case 0:
        println("Zero")
    case 1...59:
        println("不及格")
    case 60...100:
        println("及格")
    default:
        println("错误的信息")
}

let point = (7, 4)
//case的判断条件可以重叠，但是有先后顺序
switch point {
    case (1, 1):
        println("first position")
    case (2, _):    //'_'占位符，不会进行比较
        println("second position")
    case (-2...2, -2...2):
        println("third position")
    default:
        println("default")
}

switch point {
    case (let x, 1):
        println("x = \(x)")
    case (8, let y):
        println("y = \(y)")
    case (let x, let y):
        println("x = \(x), y = \(y)")
}

switch point {
    case (let x, let y) where x == y:
        println("x等于y")
    case (let x, let y) where true:
        println("x等于y+3")
    case (let x, let y):
        break
}
