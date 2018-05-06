class Address {
    var buildingName: String?
    var buildingNumber: String?
    var street: String?
}

class Residence {
    var numberOfRooms: Int = 1
    var address: Address?
}

class Person {
    var residence: Residence?
}

let susan = Person()

let address = Address()
address.street = "1234 Something Drive"
address.buildingName = "Building"
address.buildingNumber = "12"

let residence = Residence()
residence.address = address

susan.residence = residence

// Below: this method is too long and we have to do multiple check in order to convert a simple number
if let home = susan.residence, let postalAddress = home.address, let buildingNumber = postalAddress.buildingNumber, let convertedNumber = Int(buildingNumber) {
    print(convertedNumber)
}

// Below: this method is more short and is more readable -> Optional chaining in action
if let buildingNumber = susan.residence?.address?.buildingNumber {
    print(buildingNumber)
}
