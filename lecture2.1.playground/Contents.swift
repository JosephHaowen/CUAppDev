//: Playground - noun: a place where people can play

import UIKit

func isEven(num: Int) -> Bool{
    return num % 2 == 0
}

let evens = [1,2,3,4,5,6,7,8].filter(isEven)

let evenss = [1,2,3,4,5,6,7,8].filter{ $0 % 2 == 0 } // sort like functional programming

let numberStrings = ["10","12","20","1","1","1","no_sam","1","1","sam"]
var filteredVals = numberStrings.flatMap { Int($0) } //lose all elements that cannot be converted to int
filteredVals = filteredVals.filter{ $0 > 6 }
filteredVals
let output = filteredVals.reduce(0, combine: { $0 + $1 }) //0 is the inital value, 0 + 10 + 12 + 20 = 42
output

//or it could be:
let output2 = numberStrings
    .flatMap{ Int($0) }
    .filter{ $0>6}
    .reduce(0, combine: +)
output2

extension UIColor{
    static func specialBlue() -> UIColor{
        return UIColor(red: 0.1, green: 0.9, blue: 0.9, alpha: 1)
    }
}

let view = UIView(frame: CGRect(x: 0, y: 0, width: 200, height: 100))
view.backgroundColor = UIColor.blueColor()
view.backgroundColor = UIColor(red: 1, green: 0, blue: 0, alpha: 1)
view.backgroundColor = UIColor.specialBlue()

enum ShapeType { //shapes can only be these three things --enum
    case Triangle
    case Square
    case Circle
}

class DrawTypes: CustomStringConvertible { //Cusom..ble is a protocol which asks every DrawTypes must have a description var.
    var type: ShapeType = .Circle
    var description: String {
        switch type {
        case .Triangle:
            return "I am a triangle"
        default:
            return "I am not a triangle"
        }
        
    }
}

let val = DrawTypes().description
print(val)



