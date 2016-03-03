//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground" //variable, can be changed
let str2 = "Hi" //constant, cannot be changed
str = "something else"

var grades = [90, 92, 85, 70, 40]
grades[2] = 90
let grade = grades[2]

var dict=["Lucas":21, "Yoda":900, "Bob": 60]
dict["Lucas"] = 22
let lucasAge = dict["Lucas"]

dict["Charlie"]

if let yoda = dict["Yoda"] {  //yoda is only valid in this scope; basiclly it says that if "Yoda" is one of the keys in the dict, then print its value out.
    print(yoda)
} else{
    print("No charlie")
}

func printHello(){
    print("Hi")
}

printHello() // call this function

func printHello(name: String){ // the value that passed in has to be a string
    print("Hello \(name)") // \(name) pass the value in the string
}

printHello("Sam")

func sum(nums: [Int]) -> Int { // -> Int: declare the retun value type is Int
    var value = 0
    for v in nums{
        value += v
    }
    return value
}

let s = sum([1,2,3,4])
print(s)

func join(str1: String, with str2: String, joiner: String){ // external /internal name
    print("\(str1) \(joiner) \(str2)")
}
join("Sam", with: "Jackson", joiner: "L.")

func join(str1: String, _ str2: String, _ joiner: String){ // external /internal name
    print("\(str1) \(joiner) \(str2)")
}
join("Sam","Jackson","L.")

class Student {
    var name = ""
    var age = 8
    
    init(_ n: String,_ a:Int) { //add _ in front of the variable name, then do not have to add variable name when call the function
        name = n
        age = a
    }
}

let stu = Student("Me",21)

var  students = [stu, Student("Joe",8)]
students.append(Student("Joseph",100))
students




