import Foundation

//Case Iterable Protocal Example
enum Tree: CaseIterable{
    case redwood
    case pine
}

print(Tree.allCases.count)
