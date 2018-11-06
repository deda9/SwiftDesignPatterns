protocol Bank {
    func withdraw(_ amount: Double)
    func deposit(_ amount: Double)
}

class RealBank: Bank {
    private var user: User!
    
    init(_ user: User) {
        self.user = user
    }
    
    func withdraw(_ amount: Double) {
        print("withdraw amount", "\(amount)", "from", user.IBAN)
    }
    
    func deposit(_ amount: Double){
        print("deposit amount", "\(amount)", "from", user.IBAN)
    }
}

class ProxyBank: Bank {
    private var userIBAN: String!
    private var realBank: RealBank!
    
    init(_ user: User) {
        self.realBank = RealBank(user)
    }
    
    func withdraw(_ amount: Double) {
        realBank.withdraw(amount)
    }
    
    func deposit(_ amount: Double){
        realBank.deposit(amount)
    }
}

class User {
    var name: String
    var IBAN: String
    
    init(name: String, IBAN: String) {
        self.name = name
        self.IBAN = IBAN
    }
}

class Tester {
    static func test() {
        let user = User(name: "Jack", IBAN: "1223-3232-D43-44")
        let bank = ProxyBank(user)
        bank.deposit(120.0)
    }
}

Tester.test()
