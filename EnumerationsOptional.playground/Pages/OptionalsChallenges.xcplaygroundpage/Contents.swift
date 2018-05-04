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



// 3.
/*
 In the editor, you have a struct named Book which has few stored properties, two of which are optional.
 Your task is to create a failable initializer that accepts a dictionary of type [String : String] as input and initializes all the stored properties. (Hint: A failable init method is one that can return nil and is written as init?).
 Use the following keys to retrieve values from the dictionary: "title", "author", "price", "pubDate"
 Note: Give your initializer argument the name dict
 */
struct Book {
    let title: String
    let author: String
    let price: String?
    let pubDate: String?
    
    init?(dict: [String: String]) {
        guard let myTitle = dict["title"], let myAuthor = dict["author"] else { return nil }
        self.price = dict["price"]
        self.pubDate = dict["pubDate"]
        self.title = myTitle
        self.author = myAuthor
    }
}


















