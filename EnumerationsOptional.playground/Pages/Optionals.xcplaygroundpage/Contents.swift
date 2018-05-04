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























