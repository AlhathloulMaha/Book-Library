var historyBooks : [String] = []
var whileCondition = true
class Books {
    
    var BookName:String
    var AuthorName:String
    var Price:String
    var Rating:String
    var Description:String
    init(){
        BookName = ""
        AuthorName = ""
        Price = ""
        Rating = ""
        Description = ""
        
    }
    init(BookName:String , AuthorName:String , Price:String , Rating:String , Description:String) {
        self.BookName =    "Name of the Book: " + BookName
        self.Price =       "Price           : " + Price
        self.Rating =      "Rating          : " + Rating
        self.Description = "Description     : " + Description
        self.AuthorName =  "Author Name     : " + AuthorName
    }
    
    func printBooks( booksDictionary : Dictionary<String, Books> , newestBookName:String ) {
        print(" \(booksDictionary[newestBookName]!.BookName) \("\n") \(booksDictionary[newestBookName]!.Price) \("\n") \(booksDictionary[newestBookName]!.Rating)  \("\n") \(booksDictionary[newestBookName]!.AuthorName)  \("\n") \(booksDictionary[newestBookName]!.Description)  ")
    }
}
var allBooks: Dictionary<String, Books> = [
    
    "The Push" : Books(BookName:"The Push: A Novel" , AuthorName: " " , Price: "18.20$", Rating: "4/5", Description: "A tense, page-turning psychological drama about the making and breaking of a family–and a woman whose experience of motherhood is nothing at all what she hoped for–and everything she feared.")
    ,
    
    "My Year Abroad" : Books(BookName: "My Year Abroad: A Novel", AuthorName: "Chang-rae lee" ,  Price: "15.89$", Rating: "3.5/5", Description: "From the award-winning author of Native Speaker and On Such a Full Sea, an exuberant, provocative story about a young American life transformed by an unusual Asian adventure - and about the human capacities for pleasure, pain, and connection. ")
    ,
    
    "Let me tell You what I mean": Books(BookName: "Let me tell you what i mean", AuthorName: "Joan Didion", Price: "19.99$", Rating: "3.9/5", Description: "From one of our most iconic and influential writers: a timeless collection of mostly early pieces that reveal what would become Joan Didion's subjects, including the press, politics, California robber barons, women, and her own self-doubt.")
    ,
    "The Call of the Wild" : Books(BookName: "The Call of the Wild", AuthorName: "Jack London", Price: "6.99$", Rating: "3.9/5", Description: "The story is set in the Yukon during the 1890s Klondike Gold Rush—a period in which strong sled dogs were in high demand. The novel's central character is a dog named Buck, a domesticated dog living at a ranch in the Santa Clara Valley of California as the story opens.")
    
    ,
    "The Three Musketeers" : Books(BookName: "The Three Musketeers", AuthorName: "Alexandre Dumas", Price: "14.99$", Rating: "4.1/5", Description: "This swashbuckling epic of chivalry, honor, and derring-do, set in France during the 1620s, is richly populated with romantic heroes, unattainable heroines, kings, queens, cavaliers, and criminals in a whirl of adventure, espionage, conspiracy, murder, vengeance, love, scandal, and suspense.")
    ,
    "Beloved" : Books(BookName: "Beloved", AuthorName: "Toni Morrison", Price: "9.29$", Rating: "3.9/5", Description: "NEW YORK TIMES BESTSELLER • From the acclaimed Nobel Prize winner: an unflinchingly look into the abyss of slavery. This spellbinding novel transforms history into a story as powerful as Exodus and as intimate as a lullaby.")
    ,
    "Little Women" : Books(BookName: "Little Women", AuthorName: "Louisa May Alcott", Price: "12.79$", Rating: "4.1/5", Description: "The beautiful 150th anniversary edition of Louisa May Alcott's classic tale of the four March sisters, featuring new illustrations and an introduction by New York Times bestselling author J")
]

print(" \("\n")📚📚📚Welcome to the Swift Library Book📚📚📚 \("\n")")

repeat{
    print("--------------------⌜📄MENU📄⌝---------------------")
    print("1. See the Newest books❗️❗️")
    print("2. Search in Catogiries🪐")
    print("3. View all books📚")
    print("4. View the History🏄‍♂️")
    print("5. Exit➡️")
    print("---------------------------------------------------")
    print("Select your choice!")
    
    if let userChoice = readLine(){
    
        switch userChoice{
            
        case "1":
            seeNewestBooks()
        case "2":
            booksInCategories()
        case "3":
            AllBooks()
        case "4":
            if(historyBooks.isEmpty){
                print("You didnt see any book yet.")
            }
            else {
                print(historyBooks)}
        case "5":
            whileCondition = false
        default :
            print("Invalid choice❗️Please true again")
            
            
        }
    }
}while whileCondition

print("Thank you for using our Application!")


func seeNewestBooks() {
    let book = Books()
    while true {
        let newestBooks =
"""
---------------⌜🎉Newest Books🎉⌝------------------
1. The Push: A Novel🧚‍♀️
2. A Crooked Tree: A Novel🥀
3. Let Me Tell You What I Mean🌺
---------------------------------------------------
"""
        
        print(" \("\n")")
        print(newestBooks)
        print("Which book do you want to see its information❓ or choose -1 to return to menu☕️")
        
        var newestBookChoice: String = ""
        if let input1 = readLine()
        {
            newestBookChoice = input1
            
            switch newestBookChoice {
            case "1":
                book.printBooks(booksDictionary: allBooks , newestBookName: "The Push")
                historyBooks.append("The Push:A Novel")
                
            case "2":
                
                book.printBooks(booksDictionary: allBooks , newestBookName: "My Year Abroad")
                historyBooks.append("My Year Abroad: A Novel")
            case "3":
                
                book.printBooks(booksDictionary: allBooks , newestBookName: "Let me tell You what I mean")
                historyBooks.append("Let me tell you what i mean")
            case "-1":
                return
            default:
                print("Invalid choice! please try again")
            }
        }
        
    }
}

func booksInCategories() {
    while true {
        let bookCategories =
"""
-------------⌜📝Books Categories📝⌝----------------
1. Action and Adventure🏄‍♂️
2. Classics🥀
---------------------------------------------------
"""
        print(" \("\n")")
        print(bookCategories)
        print("Which Category you want to see its books❓ or choose -1 to return to menu☕️")
        var bookCategoryChoice = ""
        if let input = readLine() {
            bookCategoryChoice = input
            
            switch bookCategoryChoice {
                
            case"1": actionAndAventureBooks()
            case"2": ClassicBooks()
            case"-1":
                return
            default:
                print("Invalid choice! please try again")
                
            }
        }
        
    }
    
}

func actionAndAventureBooks(){
    let book = Books()
    let actionAndAdventureBooks =
"""
------------⌜🏄‍♂️Action and Aventure🏄‍♂️⌝--------------
1. The Call of the Wild🤾🏻‍♂️
2. The Three Musketeers🏂
---------------------------------------------------
"""
    print(" \("\n")")
    print(actionAndAdventureBooks)
    print("Which book do you want to see its information❓ or choose -1 to return to book categories☕️")
    var bookActionAndAdventureChoice = ""
    if let input = readLine() {
        bookActionAndAdventureChoice = input
        
        switch bookActionAndAdventureChoice {
        case"1":
            book.printBooks(booksDictionary: allBooks , newestBookName: "The Call of the Wild")
            historyBooks.append("The Call of the Wild")
        case"2":
            book.printBooks(booksDictionary: allBooks , newestBookName: "The Three Musketeers")
            historyBooks.append("The Three Musketeers")
        case"-1":
            return
        default:
            print("Invalid choice❗️ please try again")
            actionAndAventureBooks()
        }
        
    }
}

func ClassicBooks() {
    let book = Books()
    let classicBooks =
"""
------------------⌜🥀Classic🥀⌝--------------------
1. Beloved✨
2. Little Women🙍‍♀️
---------------------------------------------------
"""
    print(" \("\n")")
    print(classicBooks)
    print("Which book do you want to see its information❓ or choose -1 to return to menu☕️")
    var bookClassicChoice = ""
    if let input = readLine() {
        bookClassicChoice = input
        
        switch bookClassicChoice {
        case"1":
            book.printBooks(booksDictionary: allBooks , newestBookName: "Beloved")
            historyBooks.append("Beloved")
        case"2":
            book.printBooks(booksDictionary: allBooks , newestBookName: "Little Women")
            historyBooks.append("Little Women")
        case"-1":
            return
        default:
            print("Invalid choice❗️ please try again")
            ClassicBooks()
        
        }
        
    }
}

func AllBooks() {
    let book = Books()
    print("📚All books 📚:")
    for book in allBooks {
        print(book.key)
    }
    print("Which book do you want to see its infromation❓ or choose -1 to return to menu☕️")
    if let userInputforAllbook = readLine() {
  
        if allBooks.keys.contains(userInputforAllbook) {
            book.printBooks(booksDictionary: allBooks , newestBookName: userInputforAllbook)
        }
        else if userInputforAllbook == "-1" {
            return
        }
        else {
            print("Invalid choice❗️ please try again")
            AllBooks() 
        }
              
    }
 
}
