// Playground - noun: a place where people can play

import UIKit

var intValue = -10
//绝对值, 10
abs(intValue)
//移动，20
advance(intValue, 30)
//对齐，4
alignof(Float)
//对齐，8
alignofValue(intValue)
//断言，如果条件不成立，抛出异常并打印信息
assert(intValue < 0, "intValue小于0", file: "iOS_Playground", line: 10)
assert(intValue < 0, "intValue小于0...")
//打印ASCII码
c_putchar(98)
//包含
var arr = [100, 20, 4, 15]
if contains(arr, 2) {
    println("arr contains 2")
}
else {
    println("arr not contains 2")
}
//统计范围里值的个数, 19
count(20..39)
//统计元素个数
countElements(arr)
countElements(1...20)
//统计二进制数的前导0的个数
countLeadingZeros(1)
//调试输出
debugPrint("abc")
//计算距离
distance(9, 11)
//截去第一个元素后的数组，不改变原始数组
dropFirst(arr)
//截去最后一个元素后的数组，不改变原始数组
dropLast(arr)
//导出对象内容
dump(arr)

enumerate(arr)

var arr2 = [1, 20, 4, 5]
equal(arr, arr2)

//fatalError("Fata Error", file: "iOS_Playground", line: 40)
//过滤，第一个参数为源数据，第二个为过滤方法（闭包）
var filtered = filter(arr, { $0 > 3 } )
//查找元素，第一个参数为源数据，第二个参数为目标数据
find(arr, 2)

indices(arr)
//插入排序
insertionSort(&arr, Range(start: 0, end: arr.count))

var arr3 = ["x", "y", "z"]
//连接数组元素
join("oooo", arr3)
//映射，map的第一个参数为源数据，第二个参数为映射的方法（闭包）
var arr4 = Array(map(arr, { $0 + 10 }))
arr4
//最大值
max(1, 2, 4, 8, 19, 200)
maxElement(arr)
minElement(arr)

arr
//化简，
reduce(arr, 1000, { return $0 + $1 })
reduce(arr, 1, { return $0 * $1 })










