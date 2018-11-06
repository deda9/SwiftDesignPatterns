
class User {
    private var name: String!
    private var mediator: Mediator!
    
    init(_ name: String, mediator: Mediator) {
        self.name = name
        self.mediator = mediator
    }
    
    func getName() -> String {
        return self.name
    }
    
    func sendMessage(_ message: String) {
        self.mediator.sendMessage(message, from: self)
    }
    
    func receiveMessage(_ message: String) {
        print("user ", name, "receive", message)
    }
}

protocol Mediator {
    func sendMessage(_ message: String, from user: User)
}

class CollageUsersMediator: Mediator {
    func sendMessage(_ message: String, from user: User){
        print("Receive", message, "from", user.getName())
    }
}

class Tester {
    static func test() {
        let mediator = CollageUsersMediator()
        let user = User("Jack", mediator: mediator)
        user.sendMessage("Hello")
    }
}

Tester.test()


