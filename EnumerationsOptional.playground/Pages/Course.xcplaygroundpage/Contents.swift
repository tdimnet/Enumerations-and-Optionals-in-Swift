let week: [String] = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"]

func dayType(for day: String) -> String {
    switch day {
    case "Saturday", "Sunday":
        return "Weekend"
    case "Monday", "Tuesday", "Wednesday", "Thursday", "Friday":
        return "Weekday"
    default:
        return "This is not a valid day"
    }
}

func isNotificationMuted(on day: String) -> Bool {
    if day == "Weekend" {
        return true
    } else {
        return false
    }
}

let result: String = dayType(for: week[4])
let isMuted: Bool = isNotificationMuted(on: result)


// Enum type would better for code organisation
enum Day {
    case sunday
    case monday
    case tuesday
    case wednesday
    case thursday
    case friday
    case saturday
}

enum DayType {
    case weekday
    case weekend
}

func dayType(for day: Day) -> DayType {
    switch day {
    case Day.saturday, Day.sunday:
        return DayType.weekend
    case Day.monday, Day.tuesday, Day.wednesday, Day.thursday, Day.friday:
        return DayType.weekday
    }
}

func isNotificationMuted(on type: DayType) -> Bool {
    switch type {
    case DayType.weekend:
        return true
    case DayType.weekday:
        return false
    }
}

let type = dayType(for: Day.saturday)
let isMutedType = isNotificationMuted(on: type)


import UIKit
enum ColorComponent {
    case rgb(red: CGFloat, green: CGFloat, blue: CGFloat, alpha: CGFloat)
    case hsb(hue: CGFloat, saturation: CGFloat, brightness: CGFloat, alpha: CGFloat)
    
    func color() -> UIColor {
        switch self {
        case .rgb(let red, let green, let blue, let alpha):
            return UIColor(red: red/255.0, green: green/255.0, blue: blue/255.0, alpha: alpha)
        case .hsb(let hue, let saturation, let brightness, let alpha):
            return UIColor(hue: hue/360.0, saturation: saturation/100.0, brightness: brightness/100.0, alpha: alpha)
        }
    }
}

ColorComponent.rgb(red: 61.0, green: 120.0, blue: 198.0, alpha: 1.0).color()






























