//
//  Book.swift
//  ReadwellAlpha
//
//  Created by Ananya Grover on 1/3/22.
//

import Foundation

struct Book: Identifiable, Codable, Hashable {
    var id: Int
    var name: String
    var author: String
    var bookArtString: String
    var publishDate: String
    var Description: String
    var isFavorite: Bool
    var category: Category
       enum Category: String, CaseIterable, Codable {
           case fantasy = "Fantasy"
           case mystery = "Mystery"
           case adventure = "Adventure"
       }
    
}

// displayed in book detail view
let booklist: [Book] = [
    
    .init(id: 1, name: "The Happy Prince", author: "Oscar Wilde", bookArtString: "happyPrince", publishDate: "May, 1888", Description: "A swallow left behind after his flock migrates for winter meets and befriends a kindhearted statue in this classic fantasy short story of love and selflessness.", isFavorite: false, category: .fantasy),
    
   
    
    .init(id: 2, name: "Robin Hood", author: "Howard Pyle", bookArtString: "robinhood", publishDate: "1883", Description: "The Necklace of Princess Fiorimonde is a fairy tale written by Mary de Morgan in her collection of short stories called \"The Necklace of Princess Fiorimonde and Other Stories.\" This collection of fairy tales originally published in 1880. Mary de Morgan helped to make the Victorian era prominent in literature.", isFavorite: false, category: .fantasy),
    
    .init(id: 3, name: "The Hobbit", author: "J. R. R. Tolkien", bookArtString: "hobbit", publishDate:"October, 1996", Description: "Enter the fantastical world of hobbit Bilbo Baggins, the wizard Gandalf, Gollum, and the spectacular world of Middle-earth. This story recounts the adventures of a reluctant hero, a powerful and dangerous ring, and the cruel dragon Smaug the Magnificent.", isFavorite: true, category: .adventure),
    
    .init(id: 4, name: "Peter Pan", author: "Mary De Morgan", bookArtString: "pikachu", publishDate: "1880", Description: "The Necklace of Princess Fiorimonde is a fairy tale written by Mary de Morgan in her collection of short stories called \"The Necklace of Princess Fiorimonde and Other Stories.\" This collection of fairy tales originally published in 1880. Mary de Morgan helped to make the Victorian era prominent in literature.", isFavorite: true, category: .adventure),
    
    .init(id: 5, name: "Cinderella", author: "Oscar Wilde", bookArtString: "happyPrince", publishDate: "May, 1888", Description: "A swallow left behind after his flock migrates for winter meets and befriends a kindhearted statue in this classic fantasy short story of love and selflessness.", isFavorite: false, category: .fantasy),
    
    
    .init(id: 6, name: "Rumplestiltskin", author: "Howard Pyle", bookArtString: "robinhood", publishDate: "1883", Description: "The Necklace of Princess Fiorimonde is a fairy tale written by Mary de Morgan in her collection of short stories called \"The Necklace of Princess Fiorimonde and Other Stories.\" This collection of fairy tales originally published in 1880. Mary de Morgan helped to make the Victorian era prominent in literature.", isFavorite: false, category: .fantasy),
    
    .init(id: 7, name: "Murder on the Orient Express", author: "J. R. R. Tolkien", bookArtString: "hobbit", publishDate:"October, 1996", Description: "Enter the fantastical world of hobbit Bilbo Baggins, the wizard Gandalf, Gollum, and the spectacular world of Middle-earth. This story recounts the adventures of a reluctant hero, a powerful and dangerous ring, and the cruel dragon Smaug the Magnificent.", isFavorite: true, category: .adventure),
    
    .init(id: 8, name: "Pokemon", author: "Mary De Morgan", bookArtString: "pikachu", publishDate: "1880", Description: "The Necklace of Princess Fiorimonde is a fairy tale written by Mary de Morgan in her collection of short stories called \"The Necklace of Princess Fiorimonde and Other Stories.\" This collection of fairy tales originally published in 1880. Mary de Morgan helped to make the Victorian era prominent in literature.", isFavorite: true, category: .adventure)
]
