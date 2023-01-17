import UIKit

class Book{
    var name:String
    var price:Int
    var company:String
    var author:String
    var pages:Int
    
    
    init(name:String,
         print:Int,
         company:String,
         author:String,
         pages:Int) {
        
        self.name = name
        
    }
    
}


var book1 = Book(name: "test", print: 10000, company: "shsh", author: "shsh", pages: 10)

