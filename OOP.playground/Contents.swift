import UIKit

class Person{
    let name: String!
    let lastName: String!
    
    init(name: String, lastName: String){
        self.name = name
        self.lastName = lastName
    }
    
    func sayHello(){
        print("Hi, my name is \(name!) \(lastName!)")
    }
}

let Gonzo = Person(name: "Gonzo", lastName: "Birrueta")
Gonzo.sayHello()


class BandMember : Person{
    var songs : [String] = []
    
    func performSong(song: String){
        songs.append(song)
    }
    
    override func sayHello() {
        print("Hi, my name is \(name!) \(lastName!) I am in a band!")
    }
}

class Singer: BandMember{
    func singSong(_ song: String) {
        super.performSong(song: song)
        if shouldRest {
            print("Sang \(song)")
            print("Ask the band for a break.")

        }else{
            print("Sang \(song)")
        }
    }

    override func sayHello(){
      print("Hi, I'm \(name!), I also sing.")
    }

    var shouldRest: Bool { // read-only computed property
        return self.songs.count >= 3
    }
}

let travis = BandMember(name: "Travis", lastName: "Scott")
travis.performSong(song: "Highest in the room")
print(travis.songs.count)
travis.sayHello()

let drake = Singer(name: "Drake", lastName: "Drake")
drake.singSong("Forever")
drake.singSong("Passionfruit")
drake.singSong("Godsplan")
