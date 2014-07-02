// Playground - noun: a place where people can play

import Cocoa

func grow(cycle: Int) -> Int {
    var height = 1
    
    for var i = 1; i <= cycle; i++ {
        if i % 2 == 0 {
            height += 1
        }
        else {
            height *= 2
        }
    }
    
    return height
}

grow(0)


//(Int, Int) -> Int
var result = {
    (a: Int, b: Int) -> Int in
    return a+b

}
result(1,2)
func f(a: (Int, Int) -> Int){
    println("\(a(20, 30))")
}

f(result)
f( { $0 * $1 } )

f({
    (a: Int, b: Int) -> Int in
    return a % b
})

var arr = [1, 29, 20, 5]
var s = sort(arr,{(a:Int,b:Int) in
    return a > b
    })

var a: Int = 10
var b: Double = 20
var sum = Double(a) + b

println(Int.max)
println(Int.min)

abs(-10)
contains(arr, 51)

countElements(arr)
arr.count











