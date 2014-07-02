// Playground - noun: a place where people can play

import Cocoa

class Animal {
    func run(speed: Double) {
        println("Animal run...")
    }
}

var ani1 = Animal()
ani1.run(100)

extension Animal {
    func jump(height: Double) {
        println("Animal jump...")
    }
}

ani1.jump(30)







