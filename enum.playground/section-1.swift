// Playground - noun: a place where people can play

import Cocoa

//raw value
//associate value
enum Week : Int{
    case Mon
    case Sun
    
    func print() {
        switch self {
        case .Mon:
            println("星期一")
        case .Sun:
            println("星期天")
        }
    }
}

var week1 = Week.Mon
week1.print()
week1.toRaw()

var cl = { () -> Void in
    var a = 10
    var b = 20
    var c = a + b
    
    println("\(c)")
}

cl()

func locally(work: () -> () ) {
    work()
}

locally {
    println("本地代码")
}

let evens = Array(filter(1..10) { $0 % 2 == 0 })







