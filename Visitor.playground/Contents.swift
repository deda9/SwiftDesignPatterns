protocol Visitor {
    func visit(cd: CD)
    func visit(book: Book)
}

protocol Visitable {
    func accept(_ visitor: Visitor)
}

class CD: Visitable {
    var name: String
    
    init(_ name: String) {
        self.name = name
    }
    
    func accept(_ visitor: Visitor){
        visitor.visit(cd: self)
    }
}

class Book: Visitable {
    var name: String
    
    init(_ name: String) {
        self.name = name
    }
    
    func accept(_ visitor: Visitor){
        visitor.visit(book: self)
    }
}

class ShopVisitor: Visitor {
    func visit(cd: CD) {
        /** then the manipulation wont be in the CD itself, it will be here in the visitor */
        print("visit cd with name", cd.name)
    }
    
    func visit(book: Book) {
        print("visit book with name", book.name)
    }
}

class Tester {
    static func test() {
        let shopVisitor = ShopVisitor()
        let cd = CD("CD A")
        let book = Book("Book A")
        cd.accept(shopVisitor)
        book.accept(shopVisitor)
    }
}

Tester.test()
