import Foundation

//Case Iterable Protocol Example
enum Tree: CaseIterable{
    case redwood
    case pine
}

print(Tree.allCases.count)



//Equatable Protocol on Class
class StreetAddress {
    let number: String
    let street: String
    let unit: String?

    init(_ number: String, _ street: String, unit: String? = nil) {
        self.number = number
        self.street = street
        self.unit = unit
    }
}


extension StreetAddress: Equatable {
    static func == (lhs: StreetAddress, rhs: StreetAddress) -> Bool {
        return
            lhs.number == rhs.number &&
            lhs.street == rhs.street &&
            lhs.unit == rhs.unit
    }
}

let addresses = [StreetAddress("1490", "Grove Street"),
                 StreetAddress("2119", "Maple Avenue"),
                 StreetAddress("1400", "16th Street")]
let home = StreetAddress("1400", "16th Street")

//print(addresses[0] == home)
// Prints "false"
//print(addresses.contains(home))
// Prints "true"




//Another Equatable Example
extension Artist: Equatable {
    static func == (first: Artist, second: Artist) -> Bool {
        return
            first.name == second.name &&
            first.style == second.style &&
            first.yearBorn == second.yearBorn
    }
}

// Used by Artist to determine style of Artist
enum Style: String {
    case impressionism
    case surrealism
    case cubism
    case popArt
}

struct Artist {
    let name: String
    let style: Style
    let yearBorn: Int
}

// Example instances of Artists, use for testing your equatable
let monet = Artist(name: "Monet", style: .impressionism, yearBorn: 1840)
let dali = Artist(name: "Salvador Dali", style: .surrealism, yearBorn: 1904)
let andy = Artist(name: "Andy Warhol", style: .popArt, yearBorn: 1928)

//This is what we want to achieve, being able to compare artists like:

monet == dali //returns true? false?
