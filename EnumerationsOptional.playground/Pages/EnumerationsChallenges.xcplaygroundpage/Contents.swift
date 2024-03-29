// Challenges


// 1.
/*
 Let's get in some practice creating a basic enum. Declare an enum named Direction with the members left, right, up, down.
 */
//enum Direction {
//    case left
//    case right
//    case up
//    case down
//}



// 2.
/*
 In the editor below you have two objects - classes named Point and Robot. The Robot stores its location as a point instance and contains a move function.
 The task of this challenge is to complete the implementation for move. Move takes a parameter of type Direction which is an enumeration listing the possible movement directions.
 When you tell the robot to move up (by specifying Direction.Up as the argument), the y coordinate should increase by 1. Similarly moving down means the y coordinate decreases by 1, moving right means the x coordinate increases by 1 and finally left means x decreases by 1.
 */
class Point {
    var x: Int
    var y: Int
    
    init(x: Int, y: Int) {
        self.x = x
        self.y = y
    }
}

enum Direction {
    case left
    case right
    case up
    case down
}

class Robot {
    var location: Point
    
    init() {
        self.location = Point(x: 0, y: 0)
    }
    
    func move(_ direction: Direction) {
        // Enter your code below
        switch direction {
        case .up:
            location.y += 1
        case .down:
            location.y -= 1
        case .left:
            location.x -= 1
        case .right:
            location.x += 1
        }
    }
}



// 3.
/*
 For this task, let's create a enum named MobilePhone. The enum will have three members: iphone, android and windowsPhone.
 Each of these members should have a String value as its associated value.
 Once you have an enum declared, assign the value of the iPhone member with an associated value of "7 Plus" to a constant named iphone
 */
enum MobilePhone {
    case iphone(String)
    case android(String)
    case windowsPhone(String)
}

let iphone: MobilePhone = MobilePhone.iphone("7 Plus")



// 4
/*
 4.1
 In the editor you've been provided with a file buttons.swift that defines a BarButton type.
 Let's start simple. Declare a constant named done and assign an enum value of type BarButton with the member done. This member takes an associated value; assign it the string "Save".
 
 ----
 
 4.2
 Next, add a method to the enum named button that returns an instance of the class UIBarButtonItem configured properly. An example of how to create an instance for this task is shown in the comments below. Use the same initializer.
 In the method, using the associated values as titles for the button, return a button with style UIBarButtonStyle.done for the done member of the BarButton enum. Similarly for the edit member, return a UIBarButtonItem instance with the style set to UIBarButtonStyle.plain.
 In both cases you can pass nil for target and action. Once you have a method, call it on the value we created in the previous task and assign it to a constant named button.
 */
// Example of UIBarButtonItem instance
// let someButton = UIBarButtonItem(title: "A Title", style: .plain, target: nil, action: nil)
import UIKit
enum BarButton {
    case done(title: String)
    case edit(title: String)
    
    func button() -> UIBarButtonItem {
        switch self {
        case .done(let title):
            return UIBarButtonItem(title: title, style: .done, target: nil, action: nil)
        case .edit(let title):
            return UIBarButtonItem(title: title, style: .plain, target: nil, action: nil)
        }
    }
}

let done: BarButton = BarButton.done(title: "Save")
let button = done.button()



// 5
/*
 Let's get in some practice creating enums with raw values. Declare an enum named Compass with a raw value of type Int.
 Give the enum 4 members: north, south, east and west and assign them default raw values.
 Assign the enum value Compass.south to a constant named direction, by using a raw value with Compass' initializer method.
 */

enum Compass: Int {
    case north = 100
    case south = 230
    case east = 340
    case west = 500
}

let direction = Compass(rawValue: 230)






























