// Playground - noun: a place where people can play

import Cocoa

protocol Action {
    func eat()
    func run(speed: Double)
}

class Dog : Action {
    func eat() {
        println("Dog eat")
    }
    
    func run(speed: Double) {
        println("Dog run")
    }
}

class Cat : Action {
    func eat() {
        println("Cat eat")
    }
    
    func run(speed: Double) {
        println("Cat run")
    }
}

class Human {
    var pet: Action!
    
    func call() {
        pet.eat()
    }
}

class Robot : Action {
    func eat() {
        println("Robot eat")
    }
    
    func run(speed: Double) {
        println("Robot eat")
    }
}

var human: Human = Human()
var dog: Dog = Dog()
human.pet = dog
human.call()

var cat: Cat = Cat()
human.pet = cat
human.call()




























