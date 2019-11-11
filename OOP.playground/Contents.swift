import UIKit

class Person{
    let name: String!
    let lastName = "Birrueta"
    
    init(name: String){
        self.name = name
    }
    
    func sayHello(){
        print("Hi, my name is \(name!) \(lastName)")
    }
}

let Gonzo = Person(name: "Gonzo")
Gonzo.sayHello()

