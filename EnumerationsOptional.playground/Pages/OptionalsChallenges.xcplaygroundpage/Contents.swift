// Challenges


// 1.
/*
 Declare a variable named someValue of type optional Int and assign nil.
 Note: You will have to explicitly declare the type as an optional Int otherwise the compiler cannot infer it.
 */
var someValue: Int? = nil



// 2.
/*
 In the editor, you have a pretty complex dictionary representing a movie. It contains a nested dictionary, which itself contains an array of Strings as a value.
 Your job is to assign the string containing the value for the lead actor (which for the sake of the example is at position 0 in the array) to the variable leadActor.
 Since dictionaries return optional values, you will have to use an if let statement to unwrap each consecutive operation.
 */
let movieDictionary = ["Spectre": ["cast": ["Daniel Craig", "Christoph Waltz", "Léa Seydoux", "Ralph Fiennes", "Monica Bellucci", "Naomie Harris"]]]

var leadActor: String = ""

// Enter code below
if let movie = movieDictionary["Spectre"], let movieCast = movie["cast"] {
    leadActor = movieCast[0]
}





















