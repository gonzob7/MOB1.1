//Protocols Practice

import UIKit

var str = "Hello, playground"

protocol Perimeter{
    var side: Double {get}
    var perimeter: Double {get}
}

struct Square: Perimeter{
    var side: Double
    var perimeter: Double {
        return(side*4)
    }
}

var mySquare = Square(side: 5)
print(mySquare.perimeter)

struct Circle: Perimeter{
    var side: Double
    var perimeter: Double {
        return(3.14*(2*(side/2)))
    }
}

var myCircle = Circle(side: 5)
print(myCircle.perimeter)

protocol Vehicle{
    var maxSpeed: Int {get}
    var numOfWheels: Int {get}
    var numOfDoors: Int {get}
    var model: String {get}
}

struct Car:Vehicle{
    var maxSpeed: Int
    var numOfWheels: Int
    var numOfDoors: Int
    var model: String
}

struct Motorcycle:Vehicle{
    var maxSpeed: Int
    var numOfWheels: Int = 2
    var numOfDoors: Int = 0
    var model: String
}

struct Bus:Vehicle{
    var maxSpeed: Int
    var numOfWheels: Int
    var numOfDoors: Int
    var model: String
}

var myCar = Car(maxSpeed: 200, numOfWheels: 4, numOfDoors: 4, model: "FORD FOCUS")
var myBus = Bus(maxSpeed: 20, numOfWheels: 10, numOfDoors: 2, model: "SCHOOL BUS")
var myMotorcycle = Motorcycle(maxSpeed: 220, model: "HONDA SPORT BIKE")

print(myCar)
