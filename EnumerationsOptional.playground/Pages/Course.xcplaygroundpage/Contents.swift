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

































