//var trackName = "Firework"
//var artistName = "Katy Pery"
//var duration = 256
//
//let message = "Name of the track is \(trackName) artist name is \(artistName) and the duration of the track is \(duration / 60)m \(duration % 60)s long  "
//
//print(message)
//
//func showMessage(number: Int, name: String) {
//    print("The method call is working the number that has been passed to the parameter is \(number) and the string that has been passed is \(name)")
//}
//
//showMessage(number: 42, name: "Ugur")
//
//func basicFunction() -> String {
//    let message = "This is a basic message"
//    return message
//}
//
//let result = basicFunction()
//print(result)
//
//let myFamily = ["Berrin","Çetin","Uğur","Berk"]
//
//for member in myFamily {
//    print(member)
//}
//let myBestFriends: [String] = []
//func calculateValue() -> Int {
//    print("Sucsessfully called")
//    return 123
//}
//_ = calculateValue()
//
//func difference(between firstAmount: Int, and secondAmount: Int) -> Int {
//    if firstAmount > secondAmount {
//        return firstAmount - secondAmount
//    }else {
//        return secondAmount - firstAmount
//    }
//}
//
//print(difference(between: 50, and: 120))
//
//func show(message: String) {
//    print(message)
//}
//show(message: "Hello World")
//
//for number in stride(from: 0, through: 120, by: 2) {
//    print(number)
//}
//enum MediaType {
//    case book(String)
//    case movie(String)
//    case game(String)
//    case music(Int)
//}
//var itemTitle = "Middlemarch"
//var itemType: MediaType
//itemType = .game("League of Legends")
//itemType = .movie("Call of Duty")
//switch itemType {
//case .music:
//
//    print("I am listening \(itemTitle)")
//case .book:
//    print("I am reading \(itemTitle)")
//case .movie(let movie):
//    print("I am watching \(movie)")
//case .game(let game):
//    print("I am playing \(game)")
//}
//
//enum BottleSize: String {
//    case half = "37.5 cl"
//    case standart = "75 cl"
//    case magnum = "1.5 cl"
//}
//
//var myBottle: BottleSize = .magnum
//print("Your \(myBottle) is \(myBottle.rawValue)")
//
//struct Movie {
//    var title: String
//    var director: String
//    var releaseYear: Int
//    var genre: String
//    func summary() -> String {
//        return "\(title) is a \(genre) film released in \(releaseYear) and directed by \(director)"
//    }
//}
//var first = Movie(title: "Recep Ivedik", director: "Sahan Gokbahar", releaseYear: 2009, genre: "Comedy")
//var second = Movie(title: "Sweet Home Alabama", director: "Mujdat ganghı", releaseYear: 2017, genre: "Science Fiction")
//print(first.title)
//second.releaseYear = 2016
//print(first.summary())
//
//var airlines = ["SWA": "Southwest Airlines",
//                "BWA": "British Airlines",
//                "BHA": "Buddha Airways",
//                "CPA": "Cathay Pacific"]
//
//if let result = airlines["SWA"] {
//    print(result)
//}else {
//    print("No match")
//}
//airlines["DWA"] = "Discovery Airlines"
//airlines["THY"] = "Turkish Airlines"
//airlines["BWA"] = nil
//airlines
//for (_,name) in airlines {
//    print(name)
//}
//var periodicElements: [String: String]
//var employees: [Int: String]
//
//let cameraType = "Canon"
//let photoMode = true
//var shutterSpeed = 60
//var iso = 640
//var aperture = "f1.4"
//
//var basicTuple = (aperture,iso,cameraType)
//var nextTuple = ("String",photoMode,23143,cameraType)
//
//func randomAlbum() -> (albumName: String, duration: Int) {
//    let title = "And in the endless pause there came the sound of bees"
//    let duration = 2442
//
//    return (title,duration)
//}
//let result = randomAlbum()
//print(result.0)
//print(result.1)
//print(result.albumName)
//print(result.duration)
//print("****")
//let (title, length) = randomAlbum()
//print(title)
//print(length)
//struct Book {
//    var title: String
//    var authorLastName: String
//    var authorFirstName: String
//    var readingAge: Int
//    var pageCount: Int
//}
//
//let book1 = Book.init(title: "a", authorLastName: "b", authorFirstName: "c", readingAge: 4, pageCount: 4)
//let book2 = Book.init(title: "b", authorLastName: "c", authorFirstName: "d", readingAge: 3, pageCount: 3)
//let book3 = Book.init(title: "c", authorLastName: "d", authorFirstName: "e", readingAge: 12, pageCount: 2)
// let allBooks = [book1, book2, book3]
//func compareTwoBooks(firstBook: Book, secondBook: Book) -> Bool {
//    if firstBook.readingAge <= secondBook.readingAge {
//        return true
//    }else {
//        return false
//    }
//}
//let sortedArray = allBooks.sorted(by: compareTwoBooks)
//sortedArray
//
//let sortedArray = allBooks.sorted(by: {
//    (firstBook: Book, secondBook: Book) -> Bool
//    in
//    if firstBook.readingAge <= secondBook.readingAge {
//        return true
//    }else {
//        return false
//    }
//})
//sortedArray
//let sortedArray = allBooks.sorted {  $0.readingAge <= $1.readingAge }
//sortedArray
//let shortestToLongest = allBooks.sorted {  $0.pageCount <= $1.pageCount }
//shortestToLongest
//let nameSortedBooks = allBooks.sorted {  $0.authorLastName.uppercased() <= $1.authorLastName.uppercased() }
//nameSortedBooks
//let booksForUnders10s = allBooks.filter {$0.readingAge < 10 }
//booksForUnders10s
//class Appliance {
//    var manufacturer: String
//    var model: String
//    var voltage: Int
//    var capacity: Int?
//
//    init() {
//        self.manufacturer = "Default manufacturer"
//        self.model = "Default model"
//        self.voltage = 120
//    }
//    init(withVoltage: Int) {
//        self.manufacturer = "Default manufacturer"
//        self.model = "Default model"
//        self.voltage = withVoltage
//    }
//    func getDetail() -> String {
//        var message = "This is the \(self.model) from \(self.manufacturer)"
//        if self.voltage >= 220 {
//            message += " This model is for European usage."
//        }
//        return message
//    }
//    deinit {
//        <#statements#>
//    }
//}
//var a = Appliance(withVoltage: 300)
//print(a.getDetail())
//var b = Appliance()
//var kettle = Appliance()
//kettle.manufacturer = "A"
//kettle.model = "B"
//kettle.voltage = 223
//print(kettle.getDetail())
//struct Appliance {
//    var manufacturer: String
//    var model: String
//}
//var a = Appliance(manufacturer: "asd", model: "bfg")
//
//var firstString = "This is some text"
//var secondString = firstString
//secondString += " And added some value into it"
//print(secondString)
//print(firstString)
//class Message {
//    var internalText: String = "This is some text"
//}
//let a = Message()
//let b = a
//b.internalText += " With some value added into it"
//print(a.internalText)
//print(b.internalText)
//if a === b {
//    print("They are references to the same instances")
//}
//final class Appliance {
//    var make: String
//    var model: String
//    init() {
//        self.make = "Default"
//        self.model = "Default"
//    }
//    final func printDetails() {
//        print("Make: \(self.make) \nModel: \(self.model)")
//    }
//}
//class Toaster: Appliance {
//    var slices: Int
//
//    override init() {
//        self.slices = 2
//        super.init()
//    }
//    func toast() {
//        print("Toast")
//    }
//}
//var myToaster = Toaster()
//myToaster
//myToaster.make = "AA"
//myToaster.model = "BB"
//myToaster.printDetails()
//extension String {
//    func removeSpace() -> String {
//        let filteredCharacters = self.filter { $0 != " "}
//        return filteredCharacters
//    }
//
//}
//let album = "aaa aaa aaa aaa aaa aa"
//let scriptio = "bb cc gg hh ddf ff"
//let phrase = "aasd hku     kutku"
//print(album.removeSpace())
//print(scriptio.removeSpace())
//print(phrase.removeSpace())
//
//class Player {
//    var name: String
//    var livesRemaining: Int
//    var enemiesDestroyed: Int
//    var penalty: Int
//    var bonus: Int
//    var score: Int {
//        get {
//            return (enemiesDestroyed * 1000) + bonus + (livesRemaining * 5000) - penalty
//        }
//        set {
//            print("You have passed \(newValue) but I'm going to ignore it")
//        }
//    }
//    init(name: String) {
//        self.name = name
//        self.livesRemaining = 3
//        self.enemiesDestroyed = 0
//        self.penalty = 0
//        self.bonus = 0
//    }
//}
//let newPlayer = Player(name: "Ugur")
//newPlayer.enemiesDestroyed = 326
//newPlayer.penalty = 400
//newPlayer.bonus = 230
//print("And the final score is \(newPlayer.score)")
//newPlayer.score = 3131
//class Player: CustomStringConvertible {
//    var name: String
//    var livesRemaining: Int
//    var enemiesDestroyed: Int
//    var penalty: Int
//    var bonus: Int
//    var description: String {
//        return "Player \(self.name) has a score of \(score) and \(self.livesRemaining) lives remaning"
//    }
//
//    var score: Int {
//        get {
//            return (enemiesDestroyed * 1000) + bonus + (livesRemaining * 5000) - penalty
//        }
//    }
//    init(name: String) {
//        self.name = name
//        self.livesRemaining = 3
//        self.enemiesDestroyed = 0
//        self.penalty = 0
//        self.bonus = 0
//    }
//}
//var p1 = Player(name: "Ugur")
//p1.bonus = 900
//p1.penalty = 300
//p1.enemiesDestroyed = 4000
//var p2 = Player(name: "Dilara")
//p2.penalty = 1000
//p2.enemiesDestroyed = 100
//p2.bonus = 300
//p2.livesRemaining = 1
//print(p1)
//print(p2)
//protocol myProtocol {
//    func showMessage()
//    var name: String { get  }
//}
//struct myStruct: myProtocol {
//    func showMessage() {
//        print("Now conforming")
//    }
//    var name: String {
//        get {
//            return "Sebastiano"
//        }
//    }
//}
//enum ServerError: Error {
//    case noConnection
//    case serverNotFound
//    case authenticationRefused
//}
//func checkStatus(serverNumber: Int) throws -> String {
//    switch serverNumber {
//    case 1:
//        print("you have no connection ")
//        throw ServerError.noConnection
//    case 2:
//        print("Authentication failed")
//        throw ServerError.authenticationRefused
//    case 3:
//        print("Server 3 is up and running!")
//    default:
//        print("Can't find the server")
//        throw ServerError.serverNotFound
//    }
// return "Sucsessful"
//}
//do {
//     let result = try checkStatus(serverNumber: 1)
//    print(result)
//}
//catch ServerError.serverNotFound {
//    print("Server not found")
//}
//catch ServerError.noConnection {
//print("You have no connection!!")
//    print("AAAA")
//}
//catch ServerError.authenticationRefused {
//    print("Authentication error try different username or password")
//}
//catch {
//    print("The problem is \(error)")
//}
//do {
//    result = try checkStatus(serverNumber: 3)
//}catch {
//    result = nil
//}
//if result != nil {
//    print(result!)
//}
//if let result = try? checkStatus(serverNumber: 3) {
//    print(result)
//}
//func processTrack(trackName: String?, artist: String?, duration: Int?) {
//    guard let unwrappedTrackName = trackName,
//          let unwrappedArtist = artist,
//          let unwrappedDuration = duration else {
//        return
//    }
//    print("\(unwrappedTrackName) is playing by \(unwrappedArtist) with the duration of \(unwrappedDuration / 60) m \(unwrappedDuration % 60 ) s")
//}
//
//func hello() {
//    defer {
//        print("Test")
//    }
//    print("hello")
//}
//hello()
//
//var highScore = 50
//highScore = 24
//let newHighScore = 99
//let myName = "Ugur"
//var ages = [20,14,78,45,35,88,4,33,23,67]
//var newAges: [Int] = []
//print(ages)
//print("Sorted")
//ages.sort()
//print(ages)
//print("Appended")
//ages.append(31)
//print(ages)
//ages.insert(30 , at: 4)
//print("Inserted")
//print(ages)
//print("Shuffled")
//ages.shuffle()
//print(ages)
//var ages = [18,16,86,45,23,86,45,23]
//var agesSet: Set<Int> = []
//var newAgesSet = Set(ages)
//print(newAgesSet)
//var agesTestSet: Set<Int> = [10,20,30]
//print(agesTestSet)
//var newAges = Set(ages)
//newAges.contains(200)
//newAges.insert(200)
//newAges.contains(200)
//newAges.count
//let devices: [String: String] = [
//    "phone": "Iphone X",
//    "laptop": "2020 MacBook Pro",
//    "Tablet": "Ipad mini",
//    "desktop": "2017 Imac Pro"
//]
//devices["phone"]
//devices["laptop"]
//devices["Tablet"]
//
//func printInstructorName(name: String) {
//    print(name)
//}
//printInstructorName(name: "Ugur Kara")
//func add(firstNumber:Int, to secondNumber: Int) -> Int {
//    let sum = firstNumber + secondNumber
//    return sum
//}
//add(firstNumber: 5, to: 15)
//
//var isDarkMode = false
//
//if isDarkMode {
//    print("That's the way it should be.")
//}else {
//    print("You psycho.")
//}
//var myHighScore = 0
//var yourHighScore = 0
//if myHighScore > yourHighScore {
//    print("I win")
//}else {
//    print("You win")
//}
//if yourHighScore > 500 {
//    print("you are the best.")
//}else if yourHighScore > 250 {
//    print("You are an average player.")
//}else if yourHighScore > 100 {
//    print("You need an improvement.")
//}else {
//    print("You suck.")
//}
//
//let players = ["Ugur","Fırat","Yigit", "Berk"]
//for player in players where player == "Ugur"{
//    print(player)
//}
//for i in 0..<25 {
//    print(i)
//
//var randomNumbersArray: [Int] = []
//for _ in 0..<25 {
//    let randomnumber = Int.random(in: 0...100)
//    randomNumbersArray.append(randomnumber)
//}
// print(randomNumbersArray)
//enum Phone {
//    case iPhone11
//    case iPhoneSE
//    case Pixel
//    case Nokia
//}
//
//func getSeansOpinion(on phone: Phone) {
//    if phone == .iPhone11 {
//        print("I like this phone")
//    }else if phone == .iPhoneSE {
//        print("It's great but not the best")
//    }else if phone == .Pixel {
//        print("Great hardware but android eww")
//    }else if phone == .Nokia {
//        print("Impossible to break it")
//    }
//}
//getSeansOpinion(on: .Pixel)
//enum Phone: String {
//    case iPhone11  = "I want to get that phone."
//    case iPhoneSE  = "Not prefered but sure will do."
//    case Pixel     = "Great hardwaare but not enough."
//    case Nokia     = "has anyone been able to break it?"
//}
//func getUgursOpinion(on phone: Phone) {
//    print(phone.rawValue)
//}
//getUgursOpinion(on: .iPhone11)
//enum Phone {
//    case iPhone11
//    case iphoneSE
//    case Pixel
//    case Nokia
//}
//
//func getUgursOpinion(on phone: Phone) {
//    switch phone {
//    case .iPhone11:
//        print("I want that phone.")
//    case .iphoneSE:
//        print("Not prefered but sure.")
//    case .Pixel:
//        print("What the hell is that?")
//    case .Nokia:
//        print("Have you ever heard that before?")
//
//    }
//}
//getUgursOpinion(on: .iphoneSE)
//
//let matchMakingRank = 101
//
//func determinePlayerLeague(from rank: Int) {
//    switch rank {
//    case 0:
//        print("play the game to determine your league")
//    case 1..<50:
//        print("Your league is BRONZE")
//    case 50..<100:
//        print("your league is SILVER")
//    case 100..<200:
//        print("Your league is GOLD")
//    default:
//        print("GOD")
//    }
//}
//determinePlayerLeague(from: matchMakingRank)
//let number1 = 2345
//let number2 = 23458
//
//let result = number1 + number2
//let result2 = number1 - number2
//let result3 = number1 % number2
//let result4 = number1 / number2
//result == result4
//var isDarkModeOn = true
//
//if !isDarkModeOn {
//    print("It's so bright in here!")
//}
//if number1 == number2 && isDarkModeOn {
//    print("Dark mode is on, number1 is equal to number2")
//}
//if number2 == number1 || isDarkModeOn {
//    print("At least one of the condition is true.")
//}
//
//var count = 40
//count += 1
//count -= 1
//count -= 1
//
//var string1 = "Hello"
//var string2 = "Sean"
//var StringResult = string1 + string2
//print(StringResult)
//print(string1 + " " + string2)
//print("\(string1) Ugur")
//var number: Int
//var ages: [Int] = [12,56,35,85,25,7,2,84]
//ages.sort()
//let oldestAge = ages.last
//print(oldestAge!)
//
//if let oldestAge2 = ages.last {
//    print("You have a student with the age of \(oldestAge2)")
//}else {
//    print("you must have no student at all")
//}
//
//let oldestAge3 = ages.last  ?? 999
//print(oldestAge3)
//
//func getOldestAge() {
//    guard let oldestAge = ages.last else {
//        return
//    }
//    print("Oldest age in guard \(oldestAge)")
//}
//getOldestAge()
//let oldestAge4 = ages.last!
//class Developer {
//var name: String?
//var jobTitle: String?
//var yearsOfExperience: Int?
//    init(name: String, jobTitle: String, yearsOfExperience: Int) {
//        self.name = name
//        self.jobTitle = jobTitle
//        self.yearsOfExperience = yearsOfExperience
//    }
//    init() {}
//    func printName() {
//        print("My name is \(self.name!)")
//    }
//}
//
//let Sean = Developer(name: "Sean", jobTitle: "Ios Developer", yearsOfExperience: 10)
//let Zynga = Developer()
//Sean.name
//Sean.jobTitle
//Sean.yearsOfExperience
//Zynga.name
//Zynga.jobTitle
//Zynga.yearsOfExperience
//Zynga.name = "Zynga"
//Zynga.jobTitle = "Unemployed"
//Zynga.yearsOfExperience = 0
//Sean.printName()
//Zynga.printName()
//struct Student {
//    var name: String
//    var testScore: Int
//}
//var students = [Student(name: "Ugur", testScore: 80),
//Student(name: "Kivanc", testScore: 33),Student(name: "Baha", testScore:56)]
//
//var filterStudents: (Student, Student) -> Bool = { student1, student2 in
//    return student1.testScore > student2.testScore
//}
//func filterStudents(student: Student) -> Bool {
//    return student.testScore > 70
//}
//
////let topStudents = students.filter(filterStudents)
//let topStudents = students.filter { $0.testScore > 70
//}
//
//for topStudents in topStudents {
//    print(topStudents)
//}
//let studentGradesRanked = students.sorted(by: filterStudents)
//let studentGradesInorder = students.sorted { $0.testScore > $1.testScore
//}
//for ranking in studentGradesInorder {
//    print(ranking)
//}
//class Developer {
//    var name: String?
//    var jobTitle: String?
//    var yearsOfExperience: Int?
//    init(name: String, jobTtile: String, yearsOfExperience: Int) {
//        self.name = name
//        self.jobTitle = jobTtile
//        self.yearsOfExperience = yearsOfExperience
//    }
//    func tellName() {
//        print(name!)
//    }
//}
//class iOSDeveloper: Developer {
//    var favoriteFrameWork: String?
//    func tellFavoriteFramework() {
//        if let favoriteFrameWork = favoriteFrameWork {
//            print(favoriteFrameWork)
//        }else {
//            print("I dont have any favorite framework")
//        }
//    }
//    override func tellName() {
//        print("\(name!) -- \(jobTitle!)")
//    }
//}
//let Sean = iOSDeveloper(name: "Sean", jobTtile: "iOS Developer", yearsOfExperience: 5)
//Sean.favoriteFrameWork
//Sean.tellName()
//Sean.tellFavoriteFramework()
//Sean.favoriteFrameWork = "Django"
//Sean.tellFavoriteFramework()
//struct Developer {
//    var name: String
//    var jobTitle: String
//    var yearsOfExperience: Int
//}
//var Sean = Developer(name: "Sean", jobTitle: "iOS Developer", yearsOfExperience: 5)
//
//var joe = Sean
//joe.name
//joe.name = "Joe"
//sean.name
//extension String {
//    func removeWhiteSpaces() -> String {
//        return components(seperatedBy: .whitespaces).joined()
//    }
//
//let alphabet = "A B C D E F G"
//print(alphabet.removeWhiteSpaces())
//
