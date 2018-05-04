struct Person {
    let firstName: String
    let middleName: String?
    let lastName: String
    
    func fullName() -> String {
        if middleName == nil {
            return firstName + " " + lastName
        } else {
            // return firstName + " " + middleName! + " " + lastName -> never force unwrapping like middleName!
            return firstName + " " + middleName! + " " + lastName
        }
    }
}

let me: Person = Person(firstName: "Thomas", middleName: nil, lastName: "Dimnet")
me.fullName()

// Optional binding using if let
let airportCodes = ["CDG": "Charles de Gaulle"]
let newYorkAirport = airportCodes["JFK"]

if let newYorkAirtport = airportCodes["JFK"] {
    print(newYorkAirtport)
} else {
    print("Whoops! That key does not exist!")
}

let weatherDictionary: [String: [String: String]] = [
    "currently": ["temperature": "23.3"],
    "daily": ["temperature": "23.3"],
    "weekly": ["temperature": "23.3"]
]

// Bad practice
    //if let dailyWeather = weatherDictionary["daily"] {
    //    if let highTemp = dailyWeather["temperature"] {
    //        print(highTemp)
    //    }
    //}

// Good practice
if let dailyWeather = weatherDictionary["daily"], let highTemperature = dailyWeather["temperature"] {
    print(highTemperature)
}

// Downsides to Using If Let
struct Friend {
    let name: String
    let age: String
    let address: String?
    
    // Failable initializer
//    init?(dictionary: [String: String]) {
//        return nil
//    }
}

func new(friendDictionnary: [String: String]) -> Friend? {
    if let name = friendDictionnary["name"], let age = friendDictionnary["age"] {
        let address = friendDictionnary["address"]
        return Friend(name: name, age: age, address: address)
    } else {
        return nil
    }
}

// Early Exit
func newFriend(friendDictionnary: [String: String]) -> Friend? {
    guard let name = friendDictionnary["name"], let age = friendDictionnary["age"] else {
        return nil
    }
    
    let address = friendDictionnary["address"]
    
    return Friend(name: name, age: age, address: address)
}


























