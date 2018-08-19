//MARK: Kingdom Protocols
protocol Castle{
    func getName() -> String
}

protocol King{
    func getName() -> String
}

protocol Army{
    func getName() -> String
}


//MARK: Kingdom Components
class ACastle: Castle{
    func getName() -> String{
        return String(describing: self)
    }
}

class AKing: King{
    func getName() -> String{
        return String(describing: self)
    }
}

class AArmy: Army{
    func getName() -> String{
        return String(describing: self)
    }
}

class BCastle: Castle{
    func getName() -> String{
        return String(describing: self)
    }
}

class BKing: King{
    func getName() -> String{
        return String(describing: self)
    }
}

class BArmy: Army{
    func getName() -> String{
        return String(describing: self)
    }
}


//MARK: Kingdom Factory
protocol KingdomFactory{
    func createCastle() -> Castle
    func createKing() -> King
    func createArmy() -> Army
}

class AKingdomFactory: KingdomFactory{
    func createCastle() -> Castle{
        return ACastle()
    }
    
    func createKing() -> King{
        return AKing()
    }
    
    func createArmy() -> Army{
        return AArmy()
    }
}

class BKingdomFactory: KingdomFactory{
    func createCastle() -> Castle{
        return BCastle()
    }
    
    func createKing() -> King{
        return BKing()
    }
    
    func createArmy() -> Army{
        return BArmy()
    }
}

//MARK: Kingdom Maker
enum Kingdom{
    case a
    case b
}

class KingdomFactoryMaker{
    class func makeFactory(_ type : Kingdom) -> KingdomFactory{
        switch type {
        case .a:
        return AKingdomFactory()
            case .b:
            return BKingdomFactory()
        default:
            fatalError("KingdomType not supported")
        }
    }
}

class KingdomTest{
    func test(){
        let aKingdomFactory = KingdomFactoryMaker.makeFactory(Kingdom.b)
        print(aKingdomFactory.createArmy().getName())
        print(aKingdomFactory.createCastle().getName())
        print(aKingdomFactory.createKing().getName())
    }
}

KingdomTest().test()
