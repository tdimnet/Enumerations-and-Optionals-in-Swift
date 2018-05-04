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

















